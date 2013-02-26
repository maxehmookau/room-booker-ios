//
//  Booking.m
//  RoomBooker
//
//  Created by Max Woolf on 26/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import "Booking.h"

@implementation Booking

- (id)initWithRoom:(Room *)aRoom startTime:(NSDate *)aStartTime endTime:(NSDate *)anEndTime
{
    _room = aRoom;
    _startTime = aStartTime;
    _endTime = anEndTime;
    return [super init];
}

@end
