//
//  ViewController.m
//  HQCategoriesDemo
//
//  Created by 刘欢庆 on 2017/4/18.
//  Copyright © 2017年 刘欢庆. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+HQLifeCycle.h"
#import "UIView+HQLifeCycle.h"
#import "HQView.h"
@interface ViewController ()

@end

@implementation ViewController
+ (void)load
{
    NSLog(@"load");
}

+ (void)hq_loadRouter
{
    NSLog(@"hq_loadRouter");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)hq_loadSubview
{
    HQView *view = [[HQView alloc] initWithFrame:CGRectZero  ];
    
    [self.view addSubview:view];
}

@end
