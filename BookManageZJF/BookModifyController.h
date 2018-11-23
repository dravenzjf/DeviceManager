//
//  BookModifyController.h
//  BookManageZJF
//
//  Created by sjl on 2018/6/19.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"
#import "BookTableViewController.h"
@interface BookModifyController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *bookName;
@property (weak, nonatomic) IBOutlet UITextField *bookPrice;
- (IBAction)finish:(UIButton *)sender;


@property Book *xgBook;
@property NSMutableArray *bookList;
@end
