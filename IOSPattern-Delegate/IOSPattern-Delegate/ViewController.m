//
//  ViewController.m
//  IOSPattern-Delegate
//
//  Created by DangGu on 14-10-17.
//  Copyright (c) 2014年 StormXX. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize startButton,manager;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    manager=[[Manager alloc] init];
    manager.delegate=self;
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //Button初始化
    startButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [startButton setFrame:CGRectMake(100, 200, 100, 50)];
    [startButton setBackgroundColor:[UIColor colorWithRed:37.0/255.0f green:192.0/255.0f blue:166.0/255.0f alpha:1.0]];
    [startButton setTitle:@"StarWork" forState:UIControlStateNormal];
    [startButton addTarget:self action:@selector(secretaryWork) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startButton];
    
}
-(void)secretaryWork{
    [manager startWork];
}
#pragma ManagerDelegate
-(void)sendfax{
    NSLog(@"the secretary is sending the fax");
}
-(void)writeDocument{
    NSLog(@"the secretary is writing the documents");
}
-(void)doSomethingStrange{
    NSLog(@"What is Strange things?!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
