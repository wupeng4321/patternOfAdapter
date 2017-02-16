//
//  ViewController.m
//  patternOfAdapter
//
//  Created by wupeng on 2017/2/16.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BusinessCardAdapterProtocol.h"

@interface BusinessCardAdapter : NSObject <BusinessCardAdapterProtocol>

/**
 *  输入对象
 */
@property (nonatomic, weak) id data;

/**
 *  与输入对象建立联系
 *
 *  @param data 输入的对象
 *
 *  @return 实例对象
 */
- (instancetype)initWithData:(id)data;

@end
