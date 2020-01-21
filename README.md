# ms_usa

This is a personal project (where I'm not being too formal) with the intent of studying R. For this purpose, I did some maps and graphs about mass shootings is the US.

The mapping by states of the US is arbitrary. The injured index, killed index, and total index (total victims index) are indexes based on groups of 100,000 habitants. The total population per state is based on an estimate for 2019.

For example:

killed_index = (killed*100,000)/population

So, for California, we have:

killed_index (CA) = (264*100,000)/39.512.223

killed_index (CA) = 0.668

Also, I've thought it was important to depict the total number of victims in a cumulative manner through the years. Alongside this, I've made another total index, but this time I've used the total population in the US for that specific year (check the graph/code and it will be less confusing, I hope!).

data: https://en.wikipedia.org/wiki/List_of_mass_shootings_in_the_United_States_in_2019
