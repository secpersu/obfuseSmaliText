# obfuseSmaliText
smali字符串混淆

尚在开发测试中，目前发现一个bug是混效果网络请求不正常，也没看到网络请求包，暂时不清楚是什么问题(已修复)

###### 找到坑点是在获取smali字符串时，默认不会转义（虽然已经对unicode做了处理，但其它转义字符仍存在），此处使用了apache的lang包对字符串做了反转义再进行正常的加密解密即正常,目前还没有做成自动化，手动操作为先反编译app的dex文件，设置Main函数中的path路径为你的包路径下，不建议全部混淆，影响效率，只需要混淆自己写的包内的内容就可以了，混淆完成后将res下的qtfreet00.smali文件放在你的com目录下，再回编译签名就行目前没有使用什么加密算法，暂只考虑稳定性，稳定性上去后自己根据需要进行使用何种编码或者加密算法。

##### 2017-3-2
目前使用异或+十六进制的方式对字符串进行混淆，支持中文字符，测试未发现问题，有问题欢迎反馈

##### 2017-3-7
对于全局字符串变量，默认static final类型的变量会直接以`.field public static final VERSION_NAME:Ljava/lang/String; = "1.0"`形式存在，直接调用的地方均已经以"1.0"的形式进行了直接引用，不需要再去通过变量名再去获取值，开始考虑直接删除这行，联系到如果采用反射去获取变量，则会引起程序异常，从而再考虑static语句块进行字符串加密，但实现难度会很大，有好的方案的可以交流一下

##### 使用方法
* 先使用apktool.jar将apk进行反编译
* java -jar 执行obfuseSmaliString.jar
* 输入当前已经反编译apk的路径（复制粘贴即可）
* 等待任务完成，重新打包回去即可
 
##### 混淆版酷安网
[下载](https://qtfreet.cn/com.coolapk.market_7_Mod.apk)

#### 效果图
![](http://p1.bpimg.com/567571/90927a8fd19786b1.png)

