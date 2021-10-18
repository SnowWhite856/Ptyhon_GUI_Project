import requests

response = requests.get("http://ddragon.leagueoflegends.com/cdn/11.20.1/data/en_US/champion/Aatrox.json")

champ = response.json()

print(champ['data']['Aatrox']['lore'])