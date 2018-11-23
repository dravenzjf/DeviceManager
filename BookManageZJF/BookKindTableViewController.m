//
//  HotelClassTableViewController.m
//  HotelZJF
//
//  Created by sjl on 2018/6/15.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "BookKindTableViewController.h"

@interface BookKindTableViewController ()

@end

@implementation BookKindTableViewController

-(void)makeData{
    BookKind *bookClass = [[BookKind alloc]init];
    bookClass.BookKindID = @"1";
    bookClass.BookKindName = @"工业技术aaaa";
    [self.bookClassList addObject:bookClass];
    
    bookClass = [[BookKind alloc]init];
    bookClass.BookKindID = @"2";
    bookClass.BookKindName = @"历史，地理";
    [self.bookClassList addObject:bookClass];
    
    Book *book = [[Book alloc]init];
    book.BookID = @"1";
    book.bookName = @"涂料与燃料标准汇编";
    book.bookPrice = @"59";
    book.bookKindName = @"工业技术";
    [self.bookList addObject:book];
    
    book = [[Book alloc]init];
    book.BookID = @"2";
    book.bookName = @"石油工业技术经济学";
    book.bookPrice = @"38";
    book.bookKindName = @"工业技术";
    [self.bookList addObject:book];
    
    book = [[Book alloc]init];
    book.BookID = @"3";
    book.bookName = @"宋代青白瓷的历史地理研究";
    book.bookPrice = @"58";
    book.bookKindName = @"历史，地理";
    [self.bookList addObject:book];
    
    book = [[Book alloc]init];
    book.BookID = @"4";
    book.bookName = @"中国历史地理全貌";
    book.bookPrice = @"120";
    book.bookKindName = @"历史，地理";
    [self.bookList addObject:book];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bookClassList = [[NSMutableArray alloc]init];
    self.bookList = [[NSMutableArray alloc]init];
    [self makeData];
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

    return [self.bookClassList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BookClassCell" forIndexPath:indexPath];
    
    NSInteger curRow = indexPath.row;
    BookKind *bookClass = [self.bookClassList objectAtIndex:curRow];
    cell.textLabel.text = bookClass.BookKindName;
    cell.detailTextLabel.text = @"";
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"ShowBookTable"]){
        NSIndexPath *ip = [self.tableView indexPathForSelectedRow];
        BookKind *curBookClass = [self.bookClassList objectAtIndex:ip.row];
        BookTableViewController *bookTableVC = [segue destinationViewController];
        //初始化下一个界面的hotelList
        bookTableVC.bookList = [[NSMutableArray alloc]init];
        for(int i=0;i<[self.bookList count];i++){
            Book* t1 = [self.bookList objectAtIndex:i];
            //如果集合中hotelClass和当前hotelClass一致
            if(t1.bookKindName == curBookClass.BookKindName){
                [bookTableVC.bookList addObject:t1];
            }
        }
    }
}


@end
