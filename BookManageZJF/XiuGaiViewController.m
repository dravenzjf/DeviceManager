//
//  XiuGaiViewController.m
//  HotelZJF
//
//  Created by sjl on 2018/6/15.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "XiuGaiViewController.h"

@interface XiuGaiViewController ()

@end

@implementation XiuGaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.hotelName.text = self.xgHotel.bookName;
    self.hotelPrice.text = self.xgHotel.bookPrice;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"XiuGaiShowHotelTable"]){
        HotelTableViewController *hotelTableVC = [segue destinationViewController];
        //hotelTableVC.hotelList = [[NSMutableArray alloc]init];
        hotelTableVC.hotelList = self.hotelList;
    }
}


- (IBAction)finish:(UIButton *)sender {
    self.xgHotel.bookName = self.hotelName.text;
    self.xgHotel.bookPrice = self.hotelPrice.text;
}
@end
