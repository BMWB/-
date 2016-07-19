//
//  ViewController.m
//  炫酷动画
//
//  Created by wtj on 16/7/19.
//  Copyright © 2016年 wtj. All rights reserved.
//


#import "ViewController.h"
#import "CAEmitterLayer+Animations.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //雪花
    //    CAEmitterLayer *snowEmitter = [CAEmitterLayer snowEmitterPosition:CGPointMake(self.view.bounds.size.width/2, -30) emitterSize:CGSizeMake(self.view.bounds.size.width*2, 0.0)];
    //
    //    [self.view.layer insertSublayer:snowEmitter atIndex:0];
    //爱心
    //    CAEmitterLayer *heartEmitter = [CAEmitterLayer heartsEmitterPosition:CGPointMake(200, 200) emitterSize:CGSizeMake(30, 30)];
    //    [self.view.layer addSublayer:heartEmitter];
    //
    //    CABasicAnimation *heartsBurst = [CABasicAnimation animationWithKeyPath:@"emitterCells.heart.birthRate"];
    //    heartsBurst.fromValue = [NSNumber numberWithFloat:150];
    //    heartsBurst.toValue = [NSNumber numberWithFloat: 0.0];
    //    heartsBurst.duration = 10.0;
    //    heartsBurst.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    //    [heartEmitter addAnimation:heartsBurst forKey:@"heartsBurst"];
   //烟火
    CGRect viewBounds = self.view.layer.bounds;
    CAEmitterLayer *fireworksEmitter = [CAEmitterLayer fireworksEmitterPosition:CGPointMake(viewBounds.size.width/2.0, viewBounds.size.height) emitterSize:CGSizeMake(viewBounds.size.width/2.0, 0.0)];
    
    [self.view.layer addSublayer:fireworksEmitter];
}

@end
