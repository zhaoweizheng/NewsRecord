//
//  RootTableViewController.m
//  NewsRecord
//
//  Created by lanouhn on 15/4/22.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "RootTableViewController.h"
#import "RootTableViewCell.h"
#import "FashionNewsTableVC.h"
#import "HeadlineNewsTableVC.h"
#import "EconomyNewsTableVC.h"
#import "RecreationNewsTableVC.h"
#import "UIViewController+MMDrawerController.h"
#import "SportsNewsTableVC.h"
#import "FigureNewsTableVC.h"
#import "WarNewsTableVC.h"
#import "ScienceNewsTableVC.h"
#import "UIBarButtonItem+Extension.h"
#import "SetingTableVC.h"
@interface RootTableViewController ()<UITableViewDelegate, UITableViewDataSource>
{
   // NSArray *titleName;
    NSArray *pictureName;
}

@property (nonatomic, retain) NSArray *titleName;
@end

@implementation RootTableViewController
- (void)dealloc
{
    [_titleName release];
    [super dealloc];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.071 green:0.082 blue:0.118 alpha:1.000];
    self.titleName = [NSArray arrayWithObjects:@"头条", @"财经", @"娱乐", @"时尚", @"科技", @"数码", @"军事", @"体育", nil];
    pictureName = [NSArray arrayWithObjects:@"toutiao_pressed", @"caijing_pressed", @"yule_pressed", @"zutu_pressed", @"qiwen_pressed", @"keji_pressed", @"fangchan_pressed", @"junshi_pressed", @"tiyu_pressed", nil];
    self.tableView.tableFooterView = [[[UIView alloc] init] autorelease];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.tableView.rowHeight = 50;
    self.tableView.bounces = NO;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 8;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 1;
}

/**
 *  Cell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"RootCell";
    
    RootTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"RootTableViewCell" owner:self options:nil] lastObject];
    }
    NSString *stringName = [NSString stringWithFormat:@"%@", self.titleName[indexPath.section]];
    cell.titleLabel.text = [NSString stringWithFormat:@"%@",stringName];
    NSString *stringPicture = [NSString stringWithFormat:@"%@", pictureName[indexPath.section]];
    cell.pictureView.image = [UIImage imageNamed:stringPicture];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}


/**
 *  cell 的点击事件
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSLog(@"section:%ld, row:%ld", (long)indexPath.section, indexPath.row);
    
    HeadlineNewsTableVC *headNews = [[HeadlineNewsTableVC alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:headNews];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    label.text = self.titleName[indexPath.section];
    label.font = [UIFont systemFontOfSize:20];
    headNews.navigationItem.titleView = label;
    label.textColor = [UIColor whiteColor];

    [self.mm_drawerController setCenterViewController:nav withCloseAnimation:YES completion:nil];
    [headNews release];
    [label release];
    
}

/**
 *  设置区头
 */

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 80;
    }
    return 20;
}
/**
 *  对区头颜色的设置
 *
 */
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {

    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor colorWithRed:0.071 green:0.082 blue:0.118 alpha:1.000];
    return [headerView autorelease];
}

@end
