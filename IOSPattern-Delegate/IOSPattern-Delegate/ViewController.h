//
//  ViewController.h
//  IOSPattern-Delegate
//
//  Created by DangGu on 14-10-17.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Manager.h"
@interface ViewController : UIViewController<ManagerDelegate>
@property (nonatomic,strong) UIButton * startButton;
@property (nonatomic,strong) Manager * manager;
@end

