//
//  CAReplicatorLayer+Animations.h
//  炫酷动画
//
//  Created by wtj on 16/7/20.
//  Copyright © 2016年 wtj. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
@interface CAReplicatorLayer (Animations)
/**
 基于CAReplicatorLayer－点加载动画
 @parma dotsNum 点个数
 */
+(CAReplicatorLayer *)indicatorAnimation:(NSUInteger)dotsNum Duration:(CFTimeInterval) duration Color:(UIColor *)color Size:(CGRect)size;

/**
 基于CAReplicatorLayer－柱形动画
 */
+(CAReplicatorLayer *)barAnimation:(NSUInteger)barsNum Duration:(CFTimeInterval) duration Color:(UIColor *)color Size:(CGRect)size;

@end
