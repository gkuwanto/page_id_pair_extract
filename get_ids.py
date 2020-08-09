import requests
import pandas as pd
import tqdm
import sys
def get_id_from_title(title):
    posibility = list(requests.get(f'http://en.wikipedia.org/w/api.php?action=query&titles={title}&format=json').json()['query']['pages'].keys())
    if len(posibility)>2:
        print(title)
    return int(posibility[0])
df = pd.read_csv(sys.argv[1], names = ["ll_from", "ll_lang", "ll_title"])
print(df.head())
en_ids = []
for title in tqdm.tqdm(df['ll_title']):
    en_ids.append(get_id_from_title(title))
df['ll_target_id'] = en_ids
df.to_csv('page_id_pair.csv',index=False)
