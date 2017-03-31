//
//  Chain.m
//  ChainProgramming
//
//  Created by Zheng on 2017/3/30.
//  Copyright © 2017年 Zheng. All rights reserved.
//

#import "Chain.h"

@interface Chain ()

@property (nonatomic, assign) float result;

@end

@implementation Chain

+ (float)makeChain:(void (^)(Chain *make))block {
    Chain *chain = [[Chain alloc] init];
    chain.result = 0;
    block(chain);
    return chain.result;
}

- (Chain *(^)(float))add {
    return ^(float num) {
        self.result += num;
        return self;
    };
}

- (Chain *(^)(float))sub {
    return ^(float num) {
        self.result -= num;
        return self;
    };
}

- (Chain *(^)(float))mul {
    return ^(float num) {
        self.result *= num;
        return self;
    };
}

- (Chain *(^)(float))div {
    return ^(float num) {
        self.result /= num;
        return self;
    };
}



@end
