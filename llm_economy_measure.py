import os
import json
import numpy as np
import pandas as pd
import tiktoken


cost_per_thousand = {
    "gpt-4": [0.03, 0.06],
    "gpt-3.5-turbo": [0.0010, 0.0020]
}

class BasicMethod(object):

    def get_input_tokens_per_question(self):
        trace_files = os.listdir(self.trace_root_path)
        input_tokens_data = []
        for file_name in trace_files:
            data = json.load(open(os.path.join(self.trace_root_path, file_name), "r"))
            input_tokens_data.append(
                [item["prompt_tokens"] for item in data]
            )
        input_tokens_questions = np.sum(np.array(input_tokens_data), axis=0)
        return np.mean(input_tokens_questions)
    
    def get_output_tokens_per_question(self):
        trace_files = os.listdir(self.trace_root_path)
        output_tokens_data = []
        for file_name in trace_files:
            data = json.load(open(os.path.join(self.trace_root_path, file_name), "r"))
            output_tokens_data.append(
                [item["completion_tokens"] for item in data]
            )
        output_tokens_questions = np.sum(np.array(output_tokens_data), axis=0)
        return np.mean(output_tokens_questions)
    
    def get_all_tokens_per_question(self):
        return self.get_input_tokens_per_question() + self.get_output_tokens_per_question()
    
    def get_cost_per_question(self):
        input_tokens_per_question = self.get_input_tokens_per_question()
        output_tokens_per_question = self.get_output_tokens_per_question()
        cost_per_question = np.sum(np.array([input_tokens_per_question, output_tokens_per_question]) / 1000 * np.array(cost_per_thousand[self.gpt_type]))
        return cost_per_question
    
    def get_execution_accuracy(self):
        return self.execution_accuracy


class C3SQL(BasicMethod):
    name = "C3-SQL"
    gpt_type = "gpt-3.5-turbo"
    trace_root_path = "methods/C3_SQL"
    execution_accuracy = 82.0


class DINSQL(BasicMethod):
    name = "DIN-SQL"
    gpt_type = "gpt-4"
    trace_root_path = "methods/DIN_SQL"
    execution_accuracy = 82.8


class DAILSQLSC(BasicMethod):
    name = "DAIL-SQL-SC"
    gpt_type = "gpt-4"
    trace_root_path = "methods/DAIL_SQL_SC"
    execution_accuracy = 83.6


class DAILSQL(BasicMethod):
    name = "DAIL-SQL"
    gpt_type = "gpt-4"
    trace_root_path = "methods/DAIL_SQL"
    execution_accuracy = 83.1


class ChatGPT(BasicMethod):
    name = "ChatGPT"
    gpt_type = "gpt-3.5-turbo"
    trace_root_path = "methods/ChatGPT"
    execution_accuracy = 70.1


class HyperSQL(BasicMethod):
    name = "HyperSQL"
    gpt_type = "gpt-4"
    trace_root_path = "methods/HyperSQL"
    execution_accuracy = 85.9
    

class HyperSQLSC(BasicMethod):
    name = "HyperSQL-SC"
    gpt_type = "gpt-4"
    trace_root_path = "methods/HyperSQL_SC"
    execution_accuracy = 87.0


if __name__ == "__main__":
    data = []
    methods = [ChatGPT(), C3SQL(), DINSQL(), DAILSQL(), DAILSQLSC(), HyperSQL(), HyperSQLSC()]
    for method in methods:
        data.append({
            "Method": method.name,
            "GPT Type": method.gpt_type,
            "Average Input Tokens": method.get_input_tokens_per_question(),
            "Average Output Tokens": method.get_output_tokens_per_question(),
            "Average Total Tokens": method.get_all_tokens_per_question(),
            "Average Cost": method.get_cost_per_question(),
            "Execution Accuracy": method.execution_accuracy
        })
    df = pd.DataFrame(data)
    df = df.round({
        "Average Input Tokens": 2,
        "Average Output Tokens": 2,
        "Average Total Tokens": 2,
        "Average Cost": 5,
        "Execution Accuracy": 1
    })
    df.to_csv("./llm_economy.csv")
