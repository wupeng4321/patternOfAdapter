//
//  ViewController.m
//  patternOfAdapter
//
//  Created by wupeng on 2017/2/16.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "BusinessCardAdapter.h"

@implementation BusinessCardAdapter

- (instancetype)initWithData:(id)data {
    
    self = [super init];
    if (self) {
        
        self.data = data;
    }
    
    return self;
}

- (NSString *)name {

    return nil;
}

- (UIColor *)lineColor {

    return nil;
}

- (NSString *)phoneNumber {

    return nil;
}

@end
