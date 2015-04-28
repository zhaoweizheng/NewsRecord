//
//  SetingTableVC.m
//  NewsRecord
//
//  Created by lanouhn on 15/4/22.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "SetingTableVC.h"
#import "SetingTableViewCell.h"
#import "FontSetingTableVC.h"

@interface SetingTableVC ()
@property(nonatomic, retain)NSArray *setArray, *setImageArray;

@end

@implementation SetingTableVC

- (void)dealloc
{
    [_setArray release];
    [_setImageArray release];
    [super dealloc];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.title = @"设置";
    
    self.tableView.rowHeight = 60;
    
    self.setArray = [NSArray arrayWithObjects:@"字体大小", @"夜间模式", @"清除缓存", @"意见反馈", @"关于新闻", @"喜欢, 就来评分吧", nil];
    
    self.setImageArray = [NSArray arrayWithObjects:@"font", @"nightMode", @"clearcache", @"feedback", @"about", @"favourable_comment", nil];
    self.tableView.bounces = NO;
    
    self.tableView.tableFooterView = [[[UIView alloc] init] autorelease];
    
    
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
    return self.setArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = @"SetCell";
    SetingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"SetingTableViewCell" owner:self options:nil] lastObject];
//        cell = [[SetingTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.titleLabel.text = self.setArray[indexPath.row];
    NSString *imageName = self.setImageArray[indexPath.row];
    [cell.pictureView setImage:[UIImage imageNamed:imageName]];
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0:
        {
            FontSetingTableVC *fontSetViewController = [[FontSetingTableVC alloc] init];
            [self.navigationController pushViewController:fontSetViewController animated:YES];
        }
            break;
        case 1:
        {
            
        }
            break;
        case 2:
        {
            
        }
            break;
        case 3:
        {
            
        }
            break;
        case 4:
        {
            
        }
            break;
        case 5:
        {
            
        }
            break;
            
        default:
            break;
    }
    
    
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
