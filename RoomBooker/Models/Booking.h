//
//  Booking.h
//  RoomBooker
//
//  Created by Max Woolf on 26/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"

@interface Booking : NSObject
{
    // The Room that the booking is made in
    Room *_room;
    
    // Start and end times for the appointment
    NSDate *_startTime;
    NSDate *_endTime;
}

- (id)initWithRoom:(Room *)aRoom startTime:(NSDate *)aStartTime endTime:(NSDate *)anEndTime;

@property (nonatomic, retain) Room *room;
@property (nonatomic, retain) NSDate *startTime;
@property (nonatomic, retain) NSDate *endTime;

@end
