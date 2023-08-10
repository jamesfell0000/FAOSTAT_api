df = read_fao(dataset = "EI", area_codes = "10", element_codes = "5510", item_codes = "1718", 
year_codes = 2020)


resp <- GET("https://fenixservices.fao.org/faostat/api/v1/en/data/RL", query = list(area_codes = "8", element_codes = "5110", item_codes = "6620", year_codes = "2017"))

url = "http://fenixservices.fao.org/faostat/api/v1/en/data/RL?area_codes=81&element_codes=5110&item_codes=6620&year=2017&show_codes=true&show_unit=true&show_flags=true&null_values=false&page_number=1&page_size=100&output_type=objects"
url_2 ="http://fenixservices.fao.org/faostat/api/v1/en/data/QC?area=81&area_cs=FAO&element=2312%2C2510%2C2413&item=800%2C221%2C711%2C515%2C526%2C226%2C366%2C367%2C572%2C203%2C486%2C44%2C782%2C176%2C414%2C558%2C552%2C216%2C181%2C89%2C358%2C101%2C461%2C426%2C217%2C591%2C125%2C378%2C265%2C393%2C108%2C531%2C530%2C220%2C191%2C459%2C689%2C401%2C693%2C698%2C661%2C249%2C656%2C813%2C195%2C554%2C397%2C550%2C577%2C399%2C821%2C569%2C773%2C94%2C512%2C619%2C542%2C541%2C603%2C406%2C720%2C549%2C103%2C507%2C560%2C242%2C839%2C225%2C777%2C336%2C677%2C277%2C780%2C310%2C263%2C592%2C224%2C407%2C497%2C201%2C372%2C333%2C210%2C56%2C446%2C571%2C809%2C671%2C568%2C299%2C79%2C449%2C292%2C702%2C234%2C75%2C254%2C339%2C430%2C260%2C403%2C402%2C490%2C600%2C534%2C521%2C187%2C417%2C687%2C748%2C587%2C197%2C574%2C223%2C489%2C536%2C296%2C116%2C211%2C394%2C754%2C523%2C92%2C788%2C270%2C547%2C27%2C30%2C149%2C836%2C71%2C280%2C328%2C289%2C789%2C83%2C236%2C723%2C373%2C544%2C423%2C157%2C156%2C161%2C267%2C122%2C305%2C495%2C136%2C667%2C826%2C388%2C97%2C275%2C692%2C463%2C420%2C205%2C222%2C567%2C15%2C137%2C135&item_cs=FAO&year=1961%2C1962%2C1963%2C1964%2C1965%2C1966%2C1967%2C1968%2C1969%2C1970%2C1971%2C1972%2C1973%2C1974%2C1975%2C1976%2C1977%2C1978%2C1979%2C1980%2C1981%2C1982%2C1983%2C1984%2C1985%2C1986%2C1987%2C1988%2C1989%2C1990%2C1991%2C1992%2C1993%2C1994%2C1995%2C1996%2C1997%2C1998%2C1999%2C2000%2C2001%2C2002%2C2003%2C2004%2C2005%2C2006%2C2007%2C2008%2C2009%2C2010%2C2011%2C2012%2C2013%2C2014%2C2015%2C2016%2C2017%2C2018%2C2019&show_codes=true&show_unit=true&show_flags=true&null_values=false&page_number=1&page_size=100&output_type=objects" 



test <- GET("http://fenixservices.fao.org/faostat/api/v1/en/data/RL?year=2017&show_codes=true&show_unit=true&show_flags=true&null_values=false&output_type=csv")

test <- GET("http://fenixservices.fao.org/faostat/api/v1/en/data/RL?area_codes=81&element_codes=5110&item_codes=6620&year=2017&show_codes=true&show_unit=true&show_flags=true&null_values=false&output_type=csv")

test <- content(test, "parsed")
test <- content(test, "text")
data <- data.frame(test[2])

test <- GET("http://fenixservices.fao.org/faostat/api/v1/en/data/RL?area=81&area_cs=FAO&element_codes=5110&item_codes=6620&year=2017&show_codes=true&show_unit=true&show_flags=true&null_values=false&output_type=csv")

test <- GET("http://fenixservices.fao.org/faostat/api/v1/en/data/EI?area=10&element=5510&item=1718&year=2017&show_codes=true&show_unit=true&show_flags=true&null_values=false&output_type=csv")

test <- GET("http://fenixservices.fao.org/faostat/api/v1/en/data/RL?area=10&area_cs=FAO&element=5110&element_cs=FAO&item=6620&item_cs=FAO&year=2017&show_codes=true&show_unit=true&show_flags=true&null_values=false&output_type=csv")

test <- content(test, "text")
df<-read_delim(test, ",", col_names = TRUE)
