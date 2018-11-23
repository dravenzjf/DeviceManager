//
//  HotelDetailViewController.h
//  HotelZJF
//
//  Created by sjl on 2018/6/15.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"
#import "BookModifyController.h"
@interface BookViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *hotelID;
@property (weak, nonatomic) IBOutlet UITextField *hotelClassName;
@property (weak, nonatomic) IBOutlet UITextField *hotelName;
@property (weak, nonatomic) IBOutlet UITextField *hotelPrice;

//该页面接收到的book对象
@property Book *hdBook;
//该页面接收到的bookList对象
@property NSMutableArray *bookList;
@end
