//
//  AppDelegate.h
//  字体适配-Scale
//
//  Created by yurong on 2017/12/14.
//  Copyright © 2017年 yurong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

