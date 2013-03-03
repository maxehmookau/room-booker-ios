//
//  RoomDayViewController.h
//  RoomBooker
//
//  Created by Max Woolf on 02/03/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MACalendarUI/MADayView.h>

@interface RoomDayViewController : UIViewController
{
    MADayView *dayView;
}

- (id)initWithRoomName:(NSString *)roomName;

@end
