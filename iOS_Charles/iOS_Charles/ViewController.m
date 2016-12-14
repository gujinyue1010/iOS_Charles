//
//  ViewController.m
//  iOS_Charles
//
//  Created by NetEase on 16/12/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//
/*
 1.Charles是在Mac下常用的网络封包截取工具。在做移动开发时,为了调试与服务器的网络通讯协议,需要截取网络封包来分析。
 2.
   .Charles通过将自己设置成系统的 网络访问代理服务器 ,使得所有的网络请求都通过它来完成,从而实现了网络封包的截取和分析。
   .Charles也可以用于分析第三方应用的通讯协议。配合Charles的SSL功能,Charles也可以分析HTTPS协议。
 
 ==>Charles是收费软件,30天试用期。试用期过后,未付费的用于仍然可以使用,不过每次使用时间不超过30分钟,并且启动时有10秒钟的延时。
 
 3.Charles的主要功能:
   1)截取HTTP和HTTPS网路封包。
   2)支持重发网络请求,方便后端调试。
   3)支持修改网络请求参数。
   4)支持网络请求的截取并动态修改。
   5)支持模拟慢速网络。
 
 4.将Charles设置成系统代理。
   .Charles是通过将自己设置成代理服务器来完成封包截取的。所以使用Charles的第一步是将自己设置为系统的代理服务器。
   .第一次启动Charles,会请求用户授予Charles成为系统代理服务器的权限。可以输入Mac的登录密码授予Charles该权限。
    也可以忽略该请求,然后在需要的时候,选择菜单中的"Proxy"->"Mac OS X Proxy"来将Charles设置成系统代理。之后就可以看到源源不断的网络请求出现在Charles的界面中。
 
 ==>注意:Chrome和Firefox浏览器默认并不不使用系统的代理服务器设置,而Charles是通过将自己设置成代理服务器来完成封包截取的,所以默认情况下无法截取Chrome和Filefox浏览器的网络通讯内容。如果要截取的话,在Chrome中设置成使用系统的代理服务器设置即可。
 
 5.Charles主要提供两种查看封包的视图。
   .Structure视图将网络请求按访问的域名分类。
   .Sequence 视图将网络请求按访问的时间排序。
 ==>请求多了有时候会看不过来。可以使用Filter功能,输入URL的关键字来快速筛选网络请求。
 
 6.过滤网络请求。只监控向指定服务器上发送的请求。
   .通过Filter过滤出关键字。
   .在Charles的菜单栏选择"Proxy"->"Recording Settings",然后选择include栏,添加一个项目,填入需要监控的协议,主机地址,端口号。这样就可以只截取目标网站的封包了。
 
 7.截取iPhone上的网络封包。Charles通常用来获取本地上的网络封包。不过我们也可以截取其他设备上的网络请求。以iPhone为例。
   1) 要截取iPhone上的网络请求,首先要将Charles的代理功能打开。在Charles的菜单栏上选择"Proxy"->"Proxy Settings",填入代理端口8888,并且勾选上"Enable transparent HTTP proxying",就完成了在Charles上的设置。
   2) .iPhone上的设置。首先我们需要获取Charles运行所在电脑的IP地址。Charles顶部菜单的"Help"->"Local IP Address",即可在弹出的对话框中看到IP地址。
      .在iPhone的"设置"->"无限局域网"中,可以看到当前连接的wifi名。点击查看详情,能看到当前连接上的wifi的详细信息,包括IP地址,子网掩码等信息。在其最底部有HTTP代理。选择手动,填入Charles运行所在电脑的IP地址以及端口号。
      .设置完毕后,我们打开iPhone上的任意需要网络通讯的程序,就可以看到Charles弹出iPhone请求链接的确认菜单,选择Allow。
 
 8.截取HTTPS通讯信息。
   .如果需要截取分析HTTPS协议的相关内容。那么需要安装Charles的CA证书。
   .首先我们需要在Mac电脑上安装证书。点击Charles的顶部菜单,选择"Help"->"SSL Proxying"->"Install Charles Root Certificate",然后输入系统的账号密码,即可在KeyChain看到添加好的证书。
 
 ==> 需要注意:即使是安装完证书之后,Charles默认也并不截取HTTPS网络通讯的信息。如果想要截取某个网站上的所有HTTPS网络请求,可以在该请求上右击,选择SSL Proxying。这样,对于该Host的所有SSL请求都可以被截取到了。
 
 9.截取移动设备中的HTTPS通讯信息。
   点击Charles的顶部菜单,选择"Help"->"SSL Proxying"->"Install Charles Root Certificate on a Mobile Device or Remote Browser",然后会出现一个弹框,手机输入弹框中的url安装证书即可。
 ==> 同样需要注意,默认情况下Charles并不截取HTTPS通讯信息。还是要设置SSL Proxy。
 
 10. (1)模拟慢速网络
     (2)修改网络请求
     (3)修改网络请求内容
     (4)给服务器做压力测试
     (5)修改服务器返回的内容
     (6)Rewrite功能
     (7)Breakpoints功能
 */
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
