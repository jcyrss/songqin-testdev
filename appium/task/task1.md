
# Appium 作业 1 

根据课堂视频，安装搭建Appium运行环境，并运行示例代码

<br><br>
## 安装Appium Python Client 包

安装Appium Python Client 包的命令

pip install Appium-Python-Client


<br><br>
## 安装 Appium Server 

下载安装Appium Desktop的安装包，
下载地址 https://github.com/appium/appium-desktop/releases/latest
下载扩展名为.exe的包


<br><br>
## 安装 Android SDK

方法1：



先创建目录 d:\android\sdk

打开 https://developer.android.google.cn/studio/

下载 sdk-tools包 到  d:\android\sdk，进入\tools\bin\ ，执行如下命令，进行下载安装

```py
sdkmanager "platform-tools" "platforms;android-28" "build-tools;28.0.2"
```

<br>
如果下载过程出现网络异常，可以到松勤共享的百度云盘下载 zip包，解压到目录  d:\android\sdk 即可

![image](https://user-images.githubusercontent.com/10496014/43395777-eb115d32-9431-11e8-9612-3a5f245ba5f3.png)


<br>
方法2：

如果 方法1 有问题，可以访问 谷歌 官方中文网站Andorid studio 的下载包

https://developer.android.google.cn/studio/archive.html

选择2.3.3 版本，包含了sdk的安装包 Windows IDE bundle with SDK (64-bit)

下载后，进行安装。

特别注意，安装程序要求路径中最好不要有空格。


<br><br>
## 设置环境变量 android_home 的值为 sdk 目录

<br><br>
## 安装JDK
到 oracle 官方网站下载JDK 1.8 的安装包，进行安装

设置环境变量 JAVA_HOME 为 jdk 的根目录 比如  d:\tools\java\jdk1.8.0_121


<br><br>
## 手机连接电脑

找到一个安卓设备（没有可以向朋友借用一下），将其连接到电脑上，根据课堂视频指导，确保可以被命令 adb devices -l 检测到

-----------


<br><br>
## 运行自动化测试


在下面网址下载开发者头条应用 http://toutiao.io/s/apk 

安装该应用到手机上

打开应用注册一个账号<br>

- 根据课堂教学视频，运行Appium Server，并设置、启动服务<br>

- 下载自动化脚本https://github.com/jcyrss/songqin-testdev/blob/master/appium/src/lesson1/toutiao_login.py

修改其中用户名，密码为你注册的账号，运行脚本完成一个自动登录功能


