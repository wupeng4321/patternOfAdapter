//
//  ViewController.m
//  patternOfAdapter
//
//  Created by wupeng on 2017/2/16.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "CardAdapter.h"
#import "Model.h"
#import "NewCardModel.h"

@implementation CardAdapter

- (instancetype)initWithData:(id)data {
    
    self = [super init];
    if (self) {
        
        self.data = data;
    }
    
    return self;
}

- (NSString *)name {
    
    NSString *name = nil;
    
    if ([self.data isMemberOfClass:[Model class]]) {
        
        Model *model = self.data;
        name         = model.name;
        
    } else if ([self.data isMemberOfClass:[NewCardModel class]]) {
        
        NewCardModel *model = self.data;
        name                = model.name;
        
    }
    
    return name;
}

- (UIColor *)lineColor {
    
    UIColor *lineColor = nil;
    
    if ([self.data isMemberOfClass:[Model class]]) {
        
        Model *model = self.data;
        lineColor    = model.lineColor;
        
    } else if ([self.data isMemberOfClass:[NewCardModel class]]) {
        
        NewCardModel *model = self.data;
        
        if ([model.colorHexString isEqualToString:@"black"]) {
            
            lineColor = [UIColor blackColor];
            
        } else {
            
            lineColor = [UIColor redColor];
            
        }
    }
    
    return lineColor;
}

- (NSString *)phoneNumber {
    
    NSString *phoneNumber = nil;
    
    if ([self.data isMemberOfClass:[Model class]]) {
        
        Model *model = self.data;
        phoneNumber  = model.phoneNumber;
        
    } else if ([self.data isMemberOfClass:[NewCardModel class]]) {
        
        NewCardModel *model = self.data;
        phoneNumber         = model.phoneNumber;
        
    }
    
    return phoneNumber;
}

@end
