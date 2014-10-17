//
//  ManagerDelegate.h
//  IOSPattern-Delegate
//
//  Created by DangGu on 14-10-17.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ManagerDelegate <NSObject>

@required

-(void)sendfax;
-(void)writeDocument;
-(void)doSomethingStrange;

@end
