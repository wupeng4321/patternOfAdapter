//
//  ViewController.m
//  patternOfAdapter
//
//  Created by wupeng on 2017/2/16.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "ViewController.h"
#import "BusinessCardView.h"

#import "Model.h"
#import "ModelAdapter.h"

#import "NewCardModel.h"
#import "NewCardModelApater.h"

#import "CardAdapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BusinessCardView *cardView = [[BusinessCardView alloc] initWithFrame:BUSINESS_FRAME];
    cardView.center            = self.view.center;
    
    // 直接赋值 这样做确实很简单粗暴，优缺点我也在简书中提示了，各自斟酌。
    //    cardView.name        = @"JiKeXueYuan";
    //    cardView.lineColor   = [UIColor redColor];
    //    cardView.phoneNumber = @"101 - 5687 - 000";
    
    // 以对象赋值
    Model *model      = [[Model alloc] init];
    model.name        = @"wupeng";
    model.lineColor   = [UIColor redColor];
    model.phoneNumber = @"101 - 5687 - 000";
    
    NewCardModel *newCardModel  = [[NewCardModel alloc] init];
    newCardModel.name           = @"wupeng";
    newCardModel.colorHexString = @"black";
    newCardModel.phoneNumber    = @"123 - 4567 - 891";
    
    // 与输入建立联系
    BusinessCardAdapter *modelAdapter = [[CardAdapter alloc] initWithData:model];
    
    // 与输出建立联系
    [cardView loadData:modelAdapter];
    
    
    // 如果data类型或者数据格式有变化，只需要在加一个适配器而已，而没有必要再vc里或者是View里增加逻辑代码，比如下面
//    BusinessCardAdapter *newModelAdapter = [[CardAdapter alloc] initWithData:newCardModel];
//    [cardView loadData:newModelAdapter];

    [self.view addSubview:cardView];

}


@end
