//
//  Manager.h
//  IOSPattern-Delegate
//
//  Created by DangGu on 14-10-17.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ManagerDelegate.h"

@interface Manager : NSObject

@property (nonatomic,strong) NSTimer * timer;
@property (nonatomic,assign) int count;
@property (nonatomic,weak) id<ManagerDelegate> delegate;

-(void)startWork;
-(void)handle;

@end
