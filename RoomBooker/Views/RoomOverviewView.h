//
//  RoomOverviewView.h
//  RoomBooker
//
//  Created by Max Woolf on 27/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Room.h"

@interface RoomOverviewView : UIView
{
    Room *_room;
}

- (id)initWithFrame:(CGRect)frame room:(Room *)aRoom;
+(NSString*)UUIDString;
@end
