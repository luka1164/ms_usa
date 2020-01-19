import requests
from bs4 import BeautifulSoup
import pandas as pd

wiki = requests.get('https://en.wikipedia.org/wiki/List_of_mass_shootings_in_the_United_States')

soup = BeautifulSoup(wiki.content, 'html.parser')

tables = soup.find_all('table', class_='wikitable sortable')

alltables=pd.DataFrame()

for x in tables:
  df = pd.read_html(str(x))
  alltables=alltables.append(df,ignore_index=True)
print(alltables)

alltables.to_csv('data.csv')
