//
//  RoomOverviewView.m
//  RoomBooker
//
//  Created by Max Woolf on 27/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import "RoomOverviewView.h"

@implementation RoomOverviewView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, frame.size.width, 50)];
        [nameLabel setText:[_room name]];
        [nameLabel setTextAlignment:NSTextAlignmentCenter];
        [nameLabel setFont:[UIFont systemFontOfSize:48.0]];
        [nameLabel setBackgroundColor:[UIColor clearColor]];
        [self addSubview:nameLabel];
        
        UILabel *todayStats = [[UILabel alloc] initWithFrame:CGRectMake(0, 65, frame.size.width, 20)];
        //[todayStats setText:@"Free at 2pm"];
        [todayStats setText:[RoomOverviewView UUIDString]];
        [todayStats setTextAlignment:NSTextAlignmentCenter];
        [todayStats setBackgroundColor:[UIColor clearColor]];
        [self addSubview:todayStats];
        
        UIView *statusColour = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 99)];
        if([_room isCurrentlyOccupied])
        {
            [statusColour setBackgroundColor:[UIColor colorWithRed:189/255.0f green:11/255.0f blue:12/255.0f alpha:1.0f]];
        }else{
            [statusColour setBackgroundColor:[UIColor colorWithRed:36/255.0f green:184/255.0f blue:5/255.0f alpha:1.0f]];
        }
        
        [self addSubview:statusColour];

    }
    return self;
}

- (id)initWithFrame:(CGRect)frame room:(Room *)aRoom
{
    _room = aRoom;
    return [self initWithFrame:frame];
}

+(NSString*)UUIDString {
    CFUUIDRef theUUID = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, theUUID);
    CFRelease(theUUID);
    return (__bridge NSString *)(string);
}

@end
