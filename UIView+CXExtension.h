//
//  UIView+CXExtension.h
//  ChainProgramming
//
//  Created by Zheng on 2017/3/30.
//  Copyright © 2017年 Zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CXExtension)

- (UIView *(^)(CGFloat,CGFloat,CGFloat,CGFloat))setFrame;

- (UIView *(^)(UIColor *))setBackgroudColor;



@end
