//
//  AppDelegate.h
//  RoomBooker
//
//  Created by Max Woolf on 26/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *_mainNavCon;
}
@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) UINavigationController *mainNavCon;

@end
