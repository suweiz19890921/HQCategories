//
//  UIView+HQLifeCycle.m
//  HQCategoriesDemo
//
//  Created by 刘欢庆 on 2017/5/9.
//  Copyright © 2017年 刘欢庆. All rights reserved.
//

#import "UIView+HQLifeCycle.h"
#import "Aspects.h"

@implementation UIView (HQLifeCycle)
+ (void)load
{
    [self aspect_hookSelector:@selector(initWithCoder:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo){
        [aspectInfo.instance hq_loadSubview];
    } error:NULL];
    
    [self aspect_hookSelector:@selector(initWithFrame:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo){
        [aspectInfo.instance hq_loadSubview];
    } error:NULL];

}


- (void)hq_loadSubview {}

@end
