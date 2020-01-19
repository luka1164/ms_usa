library(ggplot2)
library(reshape2)

df <- structure(list(year = c(1922, 1924, 1929, 1933, 1934, 1945, 1946, 1949, 1954, 1965, 1966, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019), cumulative = c(23, 43, 50, 58, 88, 116, 120, 136, 141, 155, 203, 257, 286, 319, 324, 356, 376, 387, 396, 412, 417, 445, 461, 484, 513, 527, 597, 613, 634, 697, 737, 796, 830, 912, 932, 989, 1020, 1024, 1046, 1095, 1207, 1226, 1246, 1287, 1317, 1342, 1375, 1410, 1503, 1565, 1677, 1714, 1780, 1972, 2040, 2102, 2253, 2459, 3163, 3397, 3652), 
               index_total = c(1060, NA, 1232, NA, NA, NA, NA, 1513, NA, NA, NA, NA, NA, 2032, NA, NA, NA, NA, NA, NA, NA, NA, 2265, NA, NA, NA, NA, NA, NA, NA, NA, NA, 2487, NA, NA, NA, NA, NA, NA, NA, NA, 2814, NA, NA, NA, NA, NA, NA, NA, NA, NA, 3087, NA, NA, NA, NA, NA, NA, NA, NA, 3326)), class = "data.frame", row.names = c(NA, 
                                                                                                                                                                                                                                                                                                                                     -9L))
ggplot(subset(df, !is.na(index_total)), aes(x = year,y = index_total))+
  ggtitle("Total victims index (per 100.000 hab.) and number of victims (1922-2019)") +
  ylab("Index of victims (per 100.000 hab.) and total victims") +
  xlab("Years") +
  geom_line(color="Blue")+
  geom_line(aes(y=cumulative), color="Red")+
  geom_point(color="Blue")


