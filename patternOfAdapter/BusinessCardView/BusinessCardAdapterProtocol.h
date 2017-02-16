//
//  ViewController.m
//  patternOfAdapter
//
//  Created by wupeng on 2017/2/16.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BusinessCardAdapterProtocol <NSObject>

- (NSString *)name;

- (UIColor *)lineColor;

- (NSString *)phoneNumber;

@end
