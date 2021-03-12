# 什么是matplotlib

matplotlib： 最流行的Pyhton底层绘图库，**主要做数据可视化图标**，名字取材于matlab,模仿matlab构建

## axis

指的是X或者y这种坐标轴

`
新建一个.py文件时，名字不能写成matplotlib.py，否则会报错
`

## 设置中文显示

为什么无法显示中文，因为matplotlib默认不支持中文字符，因为默认的英文字体无法显示汉子

查看linux/mac下面支持的字体:

fc-list: 查看支持的字体
fc-list :lang=zh 中文文字路径

**解决办法：**

添加头文件：

from matplotlib import font_manager

内容里面:

设置字体的方式

my_font=font_manager.FontProperties(fname = "/usr/share/fonts/truetype/wqy/wqy-microhei.ttc") 

取步长，数字和字符串一一对应，数据的长度一样，**如果要显示中文, 后面加上fontproperties=my_font**

plt.xticks(list(x)[::3],_xtick_labels[::3],rotation = 45,fontproperties=my_font)

**比如**

##################################################

如果列表 a 表示10点到12点的每一分钟的气温，如何绘制折线图观察每分钟气温的变化
from matplotlib import pyplot as plt

import random

import matplotlib

from matplotlib import font_manager

设置字体的方式

my_font = font_manager.FontProperties(fname = "/usr/share/fonts/truetype/wqy/wqy-microhei.ttc") 

x = range(0,120)

y = [random.randint(20,35) for i in range(120)]

改变图的大小

plt.figure(figsize=(20,8),dpi=80)

绘图

plt.plot(x,y)

调整X 的参数

_xtick_labels = ["10点{}分".format(i) for i in range(60)]
_xtick_labels += ["11点{}分".format(i) for i in range(60)]

取步长，数字和字符串一一对应，数据的长度一样

plt.xticks(list(x)[::3],_xtick_labels[::3],rotation = 45,fontproperties=my_font)

添加描述信息

plt.xlabel("时间",fontproperties=my_font)

plt.ylabel("温度 单位(°C)",fontproperties=my_font)

plt.title("10点到12点每分钟的气温变化情况",fontproperties=my_font)

保存图片

plt.savefig("./代码笔记/picture/中文显示.png") 

展示

plt.show()

###################################################

图片显示结果如下

![avatar](/代码笔记/picture/中文显示.png)
