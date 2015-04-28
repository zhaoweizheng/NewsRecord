//
//  HeadlineNewsTableVC.m
//  NewsRecord
//
//  Created by lanouhn on 15/4/22.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "HeadlineNewsTableVC.h"
#import "UIBarButtonItem+Extension.h"
#import "UIViewController+MMDrawerController.h"
#import "SetingTableVC.h"
#import "DetailsVC.h"

@interface HeadlineNewsTableVC ()

@end

@implementation HeadlineNewsTableVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256 /255. green:arc4random()%256 /255. blue:arc4random()%256 /255. alpha:1.000];

    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.192 green:0.471 blue:0.996 alpha:1.000];
    
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"MainView_Nav_left_btn" highImageName:nil target:self action:@selector(leftDrawerButtonPress:)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"setting" highImageName:@"setting_gray" target:self action:@selector(rightDrawerButtonPress:)];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    

    
    
    
}
- (void)leftDrawerButtonPress:(id)sender {
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}
- (void)rightDrawerButtonPress:(id)sender {
    
    SetingTableVC *setingVC = [[[SetingTableVC alloc] init] autorelease];
    
    [self.navigationController pushViewController:setingVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"CELL";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
    }
    
   cell.textLabel.text = @"赵伟争";
    
    return cell;
}

#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    DetailsVC *detailsView = [[DetailsVC alloc] init];
    [self.navigationController pushViewController:detailsView animated:YES];
    [detailsView release];

}
@end
