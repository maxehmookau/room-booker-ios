//
//  Room.m
//  RoomBooker
//
//  Created by Max Woolf on 26/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import "Room.h"

@implementation Room

- (id)initWithName:(NSString *)aName
{
    _name = aName;
    _bookings = [[NSMutableArray alloc] init];
    return [super init];
}

- (void)addBooking:(Booking *)aBooking
{
    [_bookings addObject:aBooking];
}

@end
