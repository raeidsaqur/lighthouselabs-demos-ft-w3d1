//
//  UIImage+Extension.h
//  Raeid Saqur
//
//  Created by Raeid Saqur 
//
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

+ (UIImage *)imageWithColor:(UIColor *)color;

+ (UIImage *)convertImageToGrayScale:(UIImage *)image;

+ (UIImage*)imageWithImage:(UIImage*)sourceImage scaledToSizeWithSameAspectRatio:(CGSize)targetSize;

@end
