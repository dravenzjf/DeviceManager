//
//  BookModifyController.m
//  BookManageZJF
//
//  Created by sjl on 2018/6/19.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "BookModifyController.h"

@interface BookModifyController ()

@end

@implementation BookModifyController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bookName.text = self.xgBook.bookName;
    self.bookPrice.text = self.xgBook.bookPrice;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"XiuGaiShowBookTable"]){
        BookTableViewController *bookTableVC = [segue destinationViewController];
        bookTableVC.bookList = self.bookList;
    }
}


- (IBAction)finish:(UIButton *)sender {
    self.xgBook.bookName = self.bookName.text;
    self.xgBook.bookPrice = self.bookPrice.text;
}
@end
