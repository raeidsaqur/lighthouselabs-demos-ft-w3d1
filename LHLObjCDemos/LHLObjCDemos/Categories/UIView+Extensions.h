//
//  UIView+Extensions.h
//  Raeid Saqur
//
//  Created by Raeid Saqur on 2016-09-28.
//  Copyright © 2016 Raeid Saqur Inc. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIView (Extension)

IBInspectable @property (nonatomic) CGRect frame;

+ (void)shakeItAnimation:(UIView *)view;
- (void)circle;

@end
