//
//  BookTableViewController.m
//  BookManageZJF
//
//  Created by sjl on 2018/6/19.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "BookTableViewController.h"

@interface BookTableViewController ()

@end

@implementation BookTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.hotelList = [[NSMutableArray alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.bookList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BookCell" forIndexPath:indexPath];
    
    NSInteger curRow = indexPath.row;
    Book *book = [self.bookList objectAtIndex:curRow];
    
    
    cell.textLabel.text = book.bookName;
    cell.detailTextLabel.text = @"";
    //创建一个label来存放价格
    UILabel *label = [[UILabel alloc]init];
    label.text = [@"价格¥" stringByAppendingString:book.bookPrice];
    label.font = [UIFont systemFontOfSize:14];
    label.textColor = [UIColor redColor];
    [label sizeToFit];
    //x,y,width,height
    label.frame = CGRectMake( 280 , 15, label.frame.size.width, label.frame.size.height);
    
    [cell.contentView addSubview:label];
    
    
    return cell;
    
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"ShowBookDetail"]){
        NSIndexPath *ip = [self.tableView indexPathForSelectedRow];
        Book *curBook = [self.bookList objectAtIndex:ip.row];
        BookViewController *bookDetailVC = [segue destinationViewController];
        //将这个book指针传过去
        bookDetailVC.hdBook = curBook;
        //将bookList数据传过去，用于修改完成后返回
        //hotelDetailVC.hotelList = [[NSMutableArray alloc]init];
        bookDetailVC.bookList = self.bookList;
    }
}

@end
