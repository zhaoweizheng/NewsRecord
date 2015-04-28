//
//  UIBarButtonItem+Extension.m
//  Microblog
//
//  Created by lanouhn on 15/4/1.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)
+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName  highImageName:(NSString *)highImageName target:(id)target action:(SEL)action
{
    //设置导航栏按钮
    UIButton *button = [[UIButton alloc] init];
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    //设置按钮的尺寸为背景图片的尺寸
   // button.size = button.currentBackgroundImage.size;
    //监听按钮点击
    button.frame = CGRectMake(10, 20, 25, 25);
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
    
}
@end
