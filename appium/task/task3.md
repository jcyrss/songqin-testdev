# Appium 作业 3 

<br>

- 找到一个安卓设备（没有可以向朋友借用一下），将其连接到电脑上，根据课堂视频指导，确保可以被命令 ```adb devices -l``` 检测到

- 安装多多计算器
- 练习用 Appium Desktop中的 inspector查看界面。 
- 将上次作业，用xpath方式定位元素，再实现一遍


参考答案放下翻
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


```py
# coding=utf8

from appium import webdriver
import time,traceback



desired_caps = {}
desired_caps['platformName'] = 'Android'
desired_caps['platformVersion'] = '7.1'  #
desired_caps['deviceName'] = 'test'
desired_caps['app'] = r'd:\apk\duoduoCalculators.apk'
desired_caps['appPackage'] = 'com.ibox.calculators' #
desired_caps['appActivity'] = 'com.ibox.calculators.SplashActivity'
desired_caps['unicodeKeyboard']  = True
desired_caps['noReset'] = True
desired_caps['newCommandTimeout'] = 6000

driver = webdriver.Remote('http://localhost:4723/wd/hub', desired_caps)
driver.implicitly_wait(10)

try:
    # -----------------

    num3 = driver.find_element_by_id('com.ibox.calculators:id/digit3')
    num9 = driver.find_element_by_id('com.ibox.calculators:id/digit9')
    num5 = driver.find_element_by_id('com.ibox.calculators:id/digit5')
    plus = driver.find_element_by_id('com.ibox.calculators:id/plus')
    equal = driver.find_element_by_id('com.ibox.calculators:id/equal')
    mul  = driver.find_element_by_id('com.ibox.calculators:id/mul')

    num3.click()
    plus.click()
    num9.click()
    equal.click()
    mul.click()
    num5.click()
    equal.click()

    # ----------------------
    xpath = '//*[@resource-id="com.ibox.calculators:id/cv"]/android.widget.TextView[2]'
    ele = driver.find_element_by_xpath(xpath)

    retStr = ele.text

    # ----------------------


    print(retStr)
    if retStr == '60':
        print('pass')
    else:
        print('fail!')

        # -----------------

except:
    print(traceback.format_exc())

input('**** Press to quit..')
driver.quit()
```
