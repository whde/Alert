//
//  ViewController.m
//  AlertDemo
//
//  Created by whde on 16/4/1.
//  Copyright © 2016年 whde. All rights reserved.
//

#import "ViewController.h"
#import "Alert.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)twoBtn:(id)sender {
    Alert *alert = [[Alert alloc] initWithTitle:@"央行调查：过半居民认为目前房价过高" message:@"　　面对回暖的房地产市场，央行昨日发布的2016年第一季度城镇储户问卷调查报告显示，50.7%的居民认为目前房价“高，难以接受”，较上季下降1.3个百分点，45.7%的居民认为目前房价“可以接受”，3.6%的居民认为“令人满意”。\n\n　　对于二季度房价，17.6%的居民预期“上涨”，52.1%的居民预期“基本不变”，16.1%的居民预期“下降”，14.2%的居民“看不准”。未来3个月内准备出手购买住房的居民占比为13.6%，较上季回落1.1个百分点。\n\n　　对于当期物价，52.7%的居民认为物价“高，难以接受”，较上季提高1.7 个百分点。对未来物价预期，24.8%的居民预期下季物价将“上升”，51.6%的居民预期“基本不变”，11.9%的居民预期“下降”，11.8%的居民“看不准”。\n\n　　收入方面，79.6%的居民认为当期收入“增加”或“基本不变”，较上季提高1.2个百分点。但未来收入信心指数为48.4%，较上季下降0.7个百分点。就业方面，11.4%的居民认为一季度“形势较好，就业容易”，43.5%的居民认为“一般”，45.1%的居民认为“形势严峻，就业难”或“看不准”。未来就业预期指数为44.8%，较上季下降0.5 个百分点。\n\n" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"好", nil];
    alert.contentAlignment = NSTextAlignmentLeft;
    [alert show];
}
- (IBAction)threeBtn:(id)sender {
    Alert *alert = [[Alert alloc] initWithTitle:@"央行调查：过半居民认为目前房价过高" message:@"　　面对回暖的房地产市场，央行昨日发布的2016年第一季度城镇储户问卷调查报告显示，50.7%的居民认为目前房价“高，难以接受”，较上季下降1.3个百分点，45.7%的居民认为目前房价“可以接受”，3.6%的居民认为“令人满意”。\n\n　　对于二季度房价，17.6%的居民预期“上涨”，52.1%的居民预期“基本不变”，16.1%的居民预期“下降”，14.2%的居民“看不准”。未来3个月内准备出手购买住房的居民占比为13.6%，较上季回落1.1个百分点。\n\n　　对于当期物价，52.7%的居民认为物价“高，难以接受”，较上季提高1.7 个百分点。对未来物价预期，24.8%的居民预期下季物价将“上升”，51.6%的居民预期“基本不变”，11.9%的居民预期“下降”，11.8%的居民“看不准”。\n\n　　收入方面，79.6%的居民认为当期收入“增加”或“基本不变”，较上季提高1.2个百分点。但未来收入信心指数为48.4%，较上季下降0.7个百分点。就业方面，11.4%的居民认为一季度“形势较好，就业容易”，43.5%的居民认为“一般”，45.1%的居民认为“形势严峻，就业难”或“看不准”。未来就业预期指数为44.8%，较上季下降0.5 个百分点。\n\n" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"好", @"去", nil];
    alert.contentAlignment = NSTextAlignmentLeft;
    [alert show];
}
- (IBAction)shortMessage:(id)sender {
    Alert *alert = [[Alert alloc] initWithTitle:@"央行调查：过半居民认为目前房价过高" message:@"　　面对回暖的房地产市场，央行昨日发布的2016年第一季度城镇储户问卷调查报告显示" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"好", nil];
    alert.contentAlignment = NSTextAlignmentCenter;
    [alert show];
}
- (IBAction)longMesage:(id)sender {
    Alert *alert = [[Alert alloc] initWithTitle:@"央行调查：过半居民认为目前房价过高" message:@"　　面对回暖的房地产市场，央行昨日发布的2016年第一季度城镇储户问卷调查报告显示，50.7%的居民认为目前房价“高，难以接受”，较上季下降1.3个百分点，45.7%的居民认为目前房价“可以接受”，3.6%的居民认为“令人满意”。\n\n　　对于二季度房价，17.6%的居民预期“上涨”，52.1%的居民预期“基本不变”，16.1%的居民预期“下降”，14.2%的居民“看不准”。未来3个月内准备出手购买住房的居民占比为13.6%，较上季回落1.1个百分点。\n\n　　对于当期物价，52.7%的居民认为物价“高，难以接受”，较上季提高1.7 个百分点。对未来物价预期，24.8%的居民预期下季物价将“上升”，51.6%的居民预期“基本不变”，11.9%的居民预期“下降”，11.8%的居民“看不准”。\n\n　　收入方面，79.6%的居民认为当期收入“增加”或“基本不变”，较上季提高1.2个百分点。但未来收入信心指数为48.4%，较上季下降0.7个百分点。就业方面，11.4%的居民认为一季度“形势较好，就业容易”，43.5%的居民认为“一般”，45.1%的居民认为“形势严峻，就业难”或“看不准”。未来就业预期指数为44.8%，较上季下降0.5 个百分点。\n\n" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"好", nil];
    alert.contentAlignment = NSTextAlignmentLeft;
    [alert show];
}
- (IBAction)oneTextField:(id)sender {
    Alert *alert = [[Alert alloc] initWithTitle:@"央行调查：过半居民认为目前房价过高" message:@"　　面对回暖的房地产市场，央行昨日发布的2016年第一季度城镇储户问卷调查报告显示" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"好", nil];
    [alert setAlertStyle:AlertStyleSecureTextInput];
    alert.contentAlignment = NSTextAlignmentCenter;
    [alert show];
}
- (IBAction)userPasswordTextField:(id)sender {
    Alert *alert = [[Alert alloc] initWithTitle:@"央行调查：过半居民认为目前房价过高" message:@"　　面对回暖的房地产市场，央行昨日发布的2016年第一季度城镇储户问卷调查报告显示" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"好", nil];
    [alert setAlertStyle:AlertStyleLoginAndPasswordInput];
    alert.contentAlignment = NSTextAlignmentCenter;
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
