//
//  Chain.h
//  ChainProgramming
//
//  Created by Zheng on 2017/3/30.
//  Copyright © 2017年 Zheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chain : NSObject

- (Chain *(^)(float))add; //+
- (Chain *(^)(float))sub; //-
- (Chain *(^)(float))mul; //*
- (Chain *(^)(float))div; ///


+ (float)makeChain:(void(^)(Chain *make))block;




@end
