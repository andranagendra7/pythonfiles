from selenium import webdriver
driver =webdriver.Chrome()
driver .get('https://www.sae.org/publications/technical-papers/content/2011-01-1626/')
driver.maximize_window()

publicatiion=driver.find_element_by_name("citation_publication_date").get_attribute("content")
doi=driver.find_element_by_name("citation_doi").get_attribute("content")
url=driver.find_element_by_name("citation_pdf_url").get_attribute("content")
names=driver.find_elements_by_name("citation_author")
i=0
print (publicatiion)
print (doi)
print(url)
print (names.__len__())
while(i<names.__len__()):
    print (names.__getitem__(i).get_attribute("content"))
    i=i+1
