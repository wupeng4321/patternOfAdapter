//
//  ViewController.m
//  patternOfAdapter
//
//  Created by wupeng on 2017/2/16.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BusinessCardAdapterProtocol.h"

#define  BUSINESS_FRAME  CGRectMake(0, 0, 200, 130)

@interface BusinessCardView : UIView

/**
 *  名字
 */
@property (nonatomic, strong) NSString *name;

/**
 *  线条颜色
 */
@property (nonatomic, strong) UIColor  *lineColor;

/**
 *  电话号码
 */
@property (nonatomic, strong) NSString *phoneNumber;

/**
 *  加载数据(实现了BusinessCardAdapterProtocol协议的数据)
 *
 *  @param data 实现了BusinessCardAdapterProtocol协议的数据
 */
- (void)loadData:(id <BusinessCardAdapterProtocol>)data;

@end
