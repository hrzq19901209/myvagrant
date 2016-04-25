创建一个虚拟机，作为镜像源。
需要更改的地方
1、将deb安装包放到 html/soft目录下，这些包存在于/var/cache/apt/archives目录下
2、修改config.vm.box 指定自己的box，我测试的是ubuntu14.04
3、修改config.vm.network的bridge为你自己的网卡名称
vagrant up即可

客户机
1、 修改/etc/apt/source.list
删除原来的内容（记得备份），添加
deb [arch=amd64]  http://192.168.1.134 trusty main
请把ip地址更改成提供镜像服务的主机的ip地址
2、apt-get update,这个成功则配置成功了，可以试一下安装

