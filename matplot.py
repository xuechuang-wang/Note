

##############################################
# # 传入 x 和 y，通过plot绘制处折线图,,,,第一版
# from matplotlib import pyplot as plt

# x = range(2,26,2)
# # 数据在x轴的位置，是一个可迭代对象

# y = [15,13,14.5,17,20,25,26,26,24,22,18,15]
# # 数据在y轴位置，是一个可迭代对象
# # 分别是(2,15),(4,13),(6,14.5),(8,17).....

# # 绘图
# plt.plot(x,y,color = 'red')
# # 展示图形
# plt.show()
#################################################






#################################################
# 传入 x 和 y，通过plot绘制处折线图,,,,第 2 版
# from matplotlib import pyplot as plt

# fig = plt.figure(figsize=(8,3),dpi=80)
# # figure 图形 图标的意思，在这里值的就是我们画的图的大小
# # 通过实例化一个 figure 并且传递参数，能够在后台自动使用该figure实例
# # 在图像模糊的时候可以传入dpi参数，让图片更清晰

# x = range(2,26,2)# 2 到 26 步长为：2
# y = [15,13,14.5,17,20,25,26,26,24,22,18,15]
# # 数据在y轴位置，是一个可迭代对象
# # 分别是(2,15),(4,13),(6,14.5),(8,17).....

# # 绘图
# plt.plot(x,y,color = 'red')

# # 设置 X 轴的刻度
# # plt.xticks(x)

# # 设置 X 轴的刻度，更密集
# # plt.xticks(range(2,25))

# # 设置 X 轴的刻度，步长0.5，自己传一个列表
# _xtick_labels = [i/2 for i in range(4,49)]
# plt.xticks(_xtick_labels[::2])  # 列表的取步长 每隔1.5取步长

# # 设置 Y 轴的刻度
# plt.ylabel(range(min(y),max(y)))

# # 先绘制，再保存
# plt.savefig("./代码笔记/picture/sig_size.png")  #保存图片
# # 可以保存为 svg 这种矢量图格式，放大不会有锯齿

# # 展示图形
# plt.show()
#################################################



##################################################
# 如果列表 a 表示10点到12点的每一分钟的气温，如何绘制折线图观察每分钟气温的变化
from matplotlib import pyplot as plt
import random
import matplotlib
from matplotlib import font_manager


# 设置字体的方式
my_font = font_manager.FontProperties(fname = "/usr/share/fonts/truetype/wqy/wqy-microhei.ttc") 


x = range(0,120)
y = [random.randint(20,35) for i in range(120)]

# 改变图的大小
plt.figure(figsize=(20,8),dpi=80)

# 绘图
plt.plot(x,y)

# 调整X 的参数
_xtick_labels = ["10点{}分".format(i) for i in range(60)]
_xtick_labels += ["11点{}分".format(i) for i in range(60)]

# 取步长，数字和字符串一一对应，数据的长度一样
plt.xticks(list(x)[::3],_xtick_labels[::3],rotation = 45,fontproperties=my_font) # rotation 旋转的度数

# 添加描述信息
plt.xlabel("时间",fontproperties=my_font)
plt.ylabel("温度 单位(°C)",fontproperties=my_font)
plt.title("10点到12点每分钟的气温变化情况",fontproperties=my_font)


# 保存图片
plt.savefig("./代码笔记/picture/中文显示.png")  

# 展示
plt.show()
###################################################

