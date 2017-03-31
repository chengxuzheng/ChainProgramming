//
//  UIView+CXExtension.m
//  ChainProgramming
//
//  Created by Zheng on 2017/3/30.
//  Copyright © 2017年 Zheng. All rights reserved.
//

#import "UIView+CXExtension.h"

@implementation UIView (CXExtension)

- (UIView *(^)(CGFloat,CGFloat,CGFloat,CGFloat))setFrame {
    return ^(CGFloat x,CGFloat y,CGFloat width,CGFloat height) {
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}

- (UIView *(^)(UIColor *))setBackgroudColor {
    return ^(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}




@end




