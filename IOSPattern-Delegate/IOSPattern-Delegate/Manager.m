//
//  Manager.m
//  IOSPattern-Delegate
//
//  Created by DangGu on 14-10-17.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import "Manager.h"

@implementation Manager
@synthesize timer,count,delegate;

-(void)startWork{
    self.count=0;
    self.timer=[NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(handle) userInfo:nil repeats:YES];
}

-(void)handle{
    switch (count) {
        case 0:
            [delegate sendfax];
            count++;
            break;
        case 1:
            [delegate writeDocument];
            count++;
            break;
        case 2:
            [delegate doSomethingStrange];
            [timer invalidate];
            break;
        default:
            break;
    }
}
@end
