//
//  UIViewController+HQLifeCycle.h
//  HQCategoriesDemo
//
//  Created by 刘欢庆 on 2017/4/18.
//  Copyright © 2017年 刘欢庆. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (HQLifeCycle)

/** 子视图加载 */
- (void)hq_loadSubview;

/** 加载数据 */
- (void)hq_loadData;
@end
