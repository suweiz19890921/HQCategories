//
//  UIViewController+HQLifeCycle.m
//  HQCategoriesDemo
//
//  Created by 刘欢庆 on 2017/4/18.
//  Copyright © 2017年 刘欢庆. All rights reserved.
//

#import "UIViewController+HQLifeCycle.h"
#import "Aspects.h"
@implementation UIViewController (HQLifeCycle)
+ (void)load
{
    [self aspect_hookSelector:@selector(viewDidLoad) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo){
        [aspectInfo.instance hq_loadSubview];
        [aspectInfo.instance hq_loadData];
    } error:NULL];
}

- (void)hq_loadSubview {}



- (void)hq_loadData {}
@end
