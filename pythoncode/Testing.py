from selenium import webdriver
import time

driver =webdriver.Chrome()
driver .get('http://www.google.com')
driver.maximize_window()

title=driver.title
print (title)

element =driver.find_element_by_class_name("gsfi")
element.send_keys("java")

time.sleep(3)



driver.quit()



