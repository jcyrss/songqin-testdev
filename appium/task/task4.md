# Appium 作业 4 

<br>

- 找到一个安卓设备（没有可以向朋友借用一下）
- 安装松勤自动化练习apk，[点击这里下载安装](https://github.com/jcyrss/songqin-testdev/raw/master/appium/uploads/sqauto.apk)
  
- 写自动化测试，实现 滚动到 口碑最佳 部分，并且打印出所有 口碑最佳 部分的5个应用名称





## 参考答案，往下翻
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


```python

from appium import webdriver
import time


desired_caps = {
    'platformName': 'Android',
    'platformVersion': '8',
    'deviceName': 'xxx',
    # 'app': r'd:\apk\HiSpace.apk',
    'appPackage': 'com.sqauto',
    'appActivity': 'com.sqauto.MainActivity',
    'noReset': True,
    'newCommandTimeout': 6000,
}


driver = webdriver.Remote('http://localhost:4723/wd/hub', desired_caps) #启动Remote RPC
driver.implicitly_wait(10)

target = driver.find_element_by_accessibility_id('songqin recommend')
targetY = target.location['y']

ele = driver.find_element_by_accessibility_id('cramp fast')
yPos = ele.location['y']
xPos = ele.location['x']

driver.implicitly_wait(0)
while True:
    driver.swipe(xPos, yPos, xPos, yPos - 300, 800)
    eles = driver.find_elements_by_accessibility_id('best reputation')

    # 口碑最佳 还没出现
    if not eles:
        continue

    # 口碑最佳出现了,将当前位置移到 目标位置
    driver.swipe(xPos, eles[0].location['y'], xPos, targetY, 5000)
    break

driver.implicitly_wait(10)



xpath = "//android.widget.ScrollView//android.widget.ImageView/following-sibling::android.widget.TextView[1] | //*[@content-desc='best reputation']"

eles = driver.find_elements_by_xpath(xpath)
for ele in eles:
    print(ele.text)


eleTexts = [ele.text for ele in eles]
start = eleTexts.index('口碑最佳')
print('\n\n口碑最佳应用为：\n' + '\n'.join(eleTexts[start+1:start+1+5]))

input('**** Press to quit..')
driver.quit()
```
