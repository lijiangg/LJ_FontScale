//
//  UIButton+Scale.m
//  字体适配-Scale
//
//  Created by yurong on 2017/12/15.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import "UIButton+Scale.h"

@implementation UIButton (Scale)

+(void)load{
    Method old = class_getInstanceMethod(self, @selector(initWithCoder:));
    Method new = class_getInstanceMethod(self, @selector(new_initWithCoder:));
    
    method_exchangeImplementations(old, new);
}

- (instancetype)new_initWithCoder:(NSCoder *)aDecode
{
    id obj = [self new_initWithCoder:aDecode];
    if (obj) {
        //乘以多少倍
        CGFloat scale = FONT_SCALE;
        self.titleLabel.font = [UIFont fontWithName:self.titleLabel.font.fontName size:self.titleLabel.font.pointSize*scale];
    }
    
    
    return obj;
}
@end
