//
//  AppDelegate.h
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-27.
//  Copyright © 2018 FSC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

