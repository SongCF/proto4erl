协议处理，protobuffs。

协议相关单独做成一个library，方便被各个应用使用.

|4个字节(大端)|packet|
packet ->  |100006|bytes|serivce|



# 使用方法

1. 在自己项目的rebar.config中添加deps
2. 在自己项目的src目录下创建proto目录，并将协议文件`packet.proto`和`payload.proto`放在该目录
3. 在proto项目中执行`make`命令，即可在自己项目的`src/proto`目录中生成协议文件
4. 将`BaseDefine.proto`拷贝给客户端使用（cmd的宏定义）
