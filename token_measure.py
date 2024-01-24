import json
import tiktoken

def num_tokens_from_messages(messages, model="gpt-3.5-turbo-1106"):
    """Return the number of tokens used by a list of messages."""
    try:
        encoding = tiktoken.encoding_for_model(model)
    except KeyError:
        print("Warning: model not found. Using cl100k_base encoding.")
        encoding = tiktoken.get_encoding("cl100k_base")
    tokens_per_message = 3
    tokens_per_name = 1
    num_tokens = 0
    for message in messages:
        num_tokens += tokens_per_message
        for key, value in message.items():
            num_tokens += len(encoding.encode(value))
            if key == "name":
                num_tokens += tokens_per_name
    num_tokens += 3  # every reply is primed with <|start|>assistant<|message|>
    return num_tokens

mini_dev = json.load(open("mini_dev.json", "r"))
# chatgpt_predict = json.load(open("predict.json", "r", encoding="utf-8"))

datas = []

for item in mini_dev:
    question = item["question"]
    print(question)
    continue
    for chatgpt_item in chatgpt_predict:
        if question == chatgpt_item["question"]:
            data = {
                "input": [
                    {"role": "user", "content": chatgpt_item["prompt"]}
                ],
                "output": [
                    chatgpt_item["result"]
                ],
                "prompt_tokens": num_tokens_from_messages(messages=[{"role": "user", "content": chatgpt_item["prompt"]}]),
                "completion_tokens": num_tokens_from_messages(messages=[{"role": "system", "content": chatgpt_item["result"]}]) - 3,
                "total_tokens": num_tokens_from_messages(messages=[{"role": "user", "content": chatgpt_item["prompt"]}, {"role": "system", "content": chatgpt_item["result"]}])
            }
            datas.append(data)

# with open("./chatgpt.json", "w", encoding="utf-8") as f:
#     f.write(json.dumps(datas, indent=4))
