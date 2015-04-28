//
//  AppDelegate.m
//  NewsRecord
//
//  Created by lanouhn on 15/4/22.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTableViewController.h"
#import "HeadlineNewsTableVC.h"
#import "MMDrawerController.h"
#import <QuartzCore/QuartzCore.h>
#import "UIBarButtonItem+Extension.h"
#import "UIViewController+MMDrawerController.h"

@interface AppDelegate ()

@property (nonatomic,strong) MMDrawerController * drawerController;

@end

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

-(BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    UIViewController * leftSideDrawerViewController = [[RootTableViewController alloc] init];
    
    HeadlineNewsTableVC * centerViewController = [[HeadlineNewsTableVC alloc] init];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    label.text = @"头条";
    label.font = [UIFont systemFontOfSize:20];
    centerViewController.navigationItem.titleView = label;
    label.textColor = [UIColor whiteColor];
    
    UINavigationController * navigationController = [[UINavigationController alloc] initWithRootViewController:centerViewController];
//    navigationController.title = label.text;
    
    [label release];
    [centerViewController release];
    
    
    self.drawerController = [[MMDrawerController alloc]
                             initWithCenterViewController:navigationController
                             leftDrawerViewController:leftSideDrawerViewController
                             rightDrawerViewController:nil];
    
    [self.drawerController setShowsShadow:YES];
    [self.drawerController setRestorationIdentifier:@"MMDrawer"];
    [self.drawerController setMaximumLeftDrawerWidth:230.0];
    [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeBezelPanningCenterView];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    

    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];

    [self.window setRootViewController:self.drawerController];

    return YES;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
//     Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Appdelegate文件夹 里面装得时Appdelegate
    //Macro 文件夹, 里面放得时我们项目中用到的宏定义文件;
    //Sections文件夹 里面放置我们需要用到的所有的MVC文件, 为了方便查看, 我们需要为每个MVC创建单独的文件夹
    //General文件夹, 存放公共类/基类
    //Venders文件夹, 存放项目中用到的第三方文件, 举个例子:AFNetworking文件(网络请求),高德地图SDK(地图定位),MBProgressHUD(进度指示条), SDWebImage(异步加载图片), FMDB(SQLite数据库操作第三方)
    //Helpers文件夹, 存放管理类文件, eg:MyFMDBManager(自己使用FMDB封装的SQLite数据库管理类), MyNetWorkingManager(自己使用AFNetWorking封装的网络请求类)
    //Resources文件夹,存放各种资源, 比如图片, 视频, 音频;
 
    
    //ARC工程混编MRC文件, 需要添加 -fno-objc-arc 进行标注.m文件
    //MRC工程混编ARC文件, 需要添加 -fobjc-arc 进行标注.m文件
    
//    self.window.rootViewController = [[[RootTableViewController alloc] init] autorelease];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
