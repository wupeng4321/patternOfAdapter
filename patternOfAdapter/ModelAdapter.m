//
//  ViewController.m
//  patternOfAdapter
//
//  Created by wupeng on 2017/2/16.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "ModelAdapter.h"
#import "Model.h"

@implementation ModelAdapter

- (instancetype)initWithData:(id)data {
    
    self = [super init];
    if (self) {
        
        self.data = data;
    }
    
    return self;
}

- (NSString *)name {
    
    Model *data = self.data;
    
    return data.name;
}

- (UIColor *)lineColor {
    
    Model *data = self.data;
    
    return data.lineColor;
}

- (NSString *)phoneNumber {
    
    Model *data = self.data;
    
    return data.phoneNumber;
}

@end
