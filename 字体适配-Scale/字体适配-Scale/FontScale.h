//
//  FontScale.h
//  字体适配-Scale
//
//  Created by yurong on 2017/12/15.
//  Copyright © 2017年 yurong. All rights reserved.
//

#ifndef FontScale_h
#define FontScale_h

#import <objc/runtime.h>

/**
 根据机型做适配  倍数想怎么控制请在这里修改
 例如
 iphoneX单独适配字体
 #define _iPhoneX (ScreenWidth == 375.f && ScreenHeight == 812.f ? YES : NO)
 #define FONT_SCALE _iphoneX == 1 ? 1.5 : 1
 */
#define FONT_SCALE 3

#endif /* FontScale_h */
