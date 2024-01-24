import json
import random


MINI_DEV_COUNT = {
    "EASY": 5,
    "NON-NESTED": 5,
    "NESTED": 5
}


def query_classify(query_json):
    toks = query_json["query_toks_no_value"]
    num_select, num_join = 0, 0
    for tok in toks:
        if tok.lower() == "select":
            num_select += 1
        if tok.lower() == "join":
            num_join += 1
    if num_select == 1 and num_join == 0:
        return "EASY"
    elif num_select == 1 and num_join > 0:
        return "NON-NESTED"
    else:
        return "NESTED"


mini_dev_set = []

dev_data = json.load(open("spider/dev.json", "r"))

random.seed(0)
random.shuffle(dev_data)

for data in dev_data:
    query_label = query_classify(data)
    if MINI_DEV_COUNT[query_label] > 0:
        mini_dev_set.append(data)
        MINI_DEV_COUNT[query_label] = MINI_DEV_COUNT[query_label] - 1
        print(f"query:\n{data['query']}\nlabel:{query_label}")

with open("mini_dev.json", "w") as file:
    file.write(json.dumps(mini_dev_set, indent=4))
