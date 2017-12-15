//
//  UIFont+scale.m
//  字体适配-Scale
//
//  Created by yurong on 2017/12/14.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import "UIFont+scale.h"


@implementation UIFont (scale)

+(void)load
{
    Method imp = class_getClassMethod(self , @selector(systemFontOfSize:));
    Method changeImp = class_getClassMethod(self, @selector(TB_systemFontOfSize:));
    method_exchangeImplementations(imp, changeImp);
    
    Method immp = class_getClassMethod(self , @selector(boldSystemFontOfSize:));
    Method changeImmp = class_getClassMethod(self, @selector(TB_boldSystemFontOfSize:));
    method_exchangeImplementations(immp, changeImmp);
}
+ (UIFont *)TB_systemFontOfSize:(CGFloat)pxSize{
    //乘以多少倍
    CGFloat scale = FONT_SCALE;
    UIFont *font = [UIFont TB_systemFontOfSize:pxSize*scale];
    return font;
}
//粗体
+(UIFont*)TB_boldSystemFontOfSize:(CGFloat)pxSize
{
    //乘以多少倍
    CGFloat scale = 3;
    UIFont *font = [UIFont TB_boldSystemFontOfSize:pxSize*scale];
    return font;
}

@end
