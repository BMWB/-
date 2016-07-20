//
//  CAReplicatorLayer+Animations.m
//  炫酷动画
//
//  Created by wtj on 16/7/20.
//  Copyright © 2016年 wtj. All rights reserved.
//

#import "CAReplicatorLayer+Animations.h"

@implementation CAReplicatorLayer (Animations)
+(CAReplicatorLayer *)indicatorAnimation:(NSUInteger)dotsNum Duration:(CFTimeInterval)duration Color:(UIColor *)color Size:(CGRect)size{
    
    //  背景 layer
    CAReplicatorLayer *replayer = [CAReplicatorLayer layer];
    replayer.frame = size;
    replayer.cornerRadius = 10;
    replayer.backgroundColor= [UIColor colorWithWhite:0 alpha:0.75].CGColor;
    
    //  单个小方块 （原始层）
    CAShapeLayer *dotlayer = [CAShapeLayer layer];
    
    UIBezierPath *dotPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 14, 14) cornerRadius:2];
    dotlayer.path = dotPath.CGPath;
    dotlayer.position = CGPointMake(replayer.bounds.size.width/2,replayer.bounds.size.height/5);
    dotlayer.fillColor =  color.CGColor;
    [replayer addSublayer:dotlayer];
    
     //  1、设置 拷贝份数、旋转
    CGFloat angle = 2 * M_PI /dotsNum;
    
    replayer.instanceCount = dotsNum;
    replayer.instanceTransform = CATransform3DMakeRotation(angle, 0, 0, 1);
    
    //  2、设置了 动画后, 每个点 会同时 执行 变大变小
    CABasicAnimation * shrinkAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    shrinkAnimation.fromValue = @(1.0);
    shrinkAnimation.toValue = @(0.1);
    shrinkAnimation.duration = duration;
    shrinkAnimation.repeatCount = INFINITY;
    //    shrinkAnimation.autoreverses = YES;     //    TODO: 打开这行,看看效果
    [dotlayer addAnimation:shrinkAnimation forKey:nil];
    
    //  3、设置 每个点的 延时 （会逐个自动添加上）
    replayer.instanceDelay = duration / dotsNum;    // TODO: 注释掉试试
    
    dotlayer.transform = CATransform3DMakeTranslation(0.01, 0.01, 0.01);
    
    return replayer;
    
}
@end
