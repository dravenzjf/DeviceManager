//
//  HotelDetailViewController.m
//  HotelZJF
//
//  Created by sjl on 2018/6/15.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "BookViewController.h"

@interface BookViewController ()

@end

@implementation BookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.hotelID.text = self.hdBook.BookID;
    self.hotelClassName.text = self.hdBook.bookKindName;
    self.hotelName.text = self.hdBook.bookName;
    self.hotelPrice.text = self.hdBook.bookPrice;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"ShowXiuGai"]){
        BookModifyController *xiuGaiVC = [segue destinationViewController];
        xiuGaiVC.xgBook = self.hdBook;
        //将hotelList数据传过去，用于修改完成后返回
        //xiuGaiVC.hotelList = [[NSMutableArray alloc]init];
        xiuGaiVC.bookList = self.bookList;
    }
}


@end
