from selenium import webdriver
import time

driver = webdriver.Chrome()
driver.get('http://www.repository.voxforge1.org/downloads/SpeechCorpus/Trunk/Audio/Original/16kHz_16bit/')
driver.maximize_window()
time.sleep(2)

i=0
elements=driver.find_elements_by_xpath("//a[contains(text(),'.tgz')]")
print (elements.__len__())
while(i<elements.__len__()):
    elements.__getitem__(i).click()
    i=i+1
