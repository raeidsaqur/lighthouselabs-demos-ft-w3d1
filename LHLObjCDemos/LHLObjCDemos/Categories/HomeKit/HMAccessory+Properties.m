//
//  HMAccessory+Properties.m
//  LHLObjCDemos
//
//  Created by Raeid Saqur on 2016-11-03.
//  Copyright © 2016 Finatechal. All rights reserved.
//

#import <objc/runtime.h>
#import "HMAccessory+Properties.h"


static char modelKey = 'd';
static char serialKey = 's';
static char manufacturerKey = 'm';

@implementation HMAccessory (Properties)

- (NSString *)ebSerialNumber {
    return objc_getAssociatedObject(self, &serialKey);
}

- (void)setEbSerialNumber:(NSString *)aSerialNumber {
    objc_setAssociatedObject(self, &serialKey, aSerialNumber, OBJC_ASSOCIATION_COPY);
}

- (NSString *)ebModel {
    return objc_getAssociatedObject(self, &modelKey);
}

- (void)setEbModel:(NSString *)aModel {
    objc_setAssociatedObject(self, &modelKey, aModel, OBJC_ASSOCIATION_COPY);
}

- (NSString *)ebManufacturer {
    return objc_getAssociatedObject(self, &manufacturerKey);
}

- (void)setEbManufacturer:(NSString *)aManufacturer {
    objc_setAssociatedObject(self, &manufacturerKey, aManufacturer, OBJC_ASSOCIATION_COPY);
}

@end
