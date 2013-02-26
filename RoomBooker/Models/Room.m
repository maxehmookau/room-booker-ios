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

- (BOOL)isOccupiedAt:(NSDate *)aDate
{
    for (Booking *booking in _bookings) {
        if ([Room date:aDate isBetweenDate:[booking startTime] andDate:[booking endTime]]) {
            return YES;
        }
    }
    return NO;
}

- (BOOL)isCurrentlyOccupied
{
    return [self isOccupiedAt:[NSDate date]];
}


// This should probably be a category on NSDate!
// Solutions taken from here
// http://stackoverflow.com/questions/1072848/how-to-check-if-an-nsdate-occurs-between-two-other-nsdates
// Could definitely do with more elegent solution to this problem.
+ (BOOL)date:(NSDate*)date isBetweenDate:(NSDate*)beginDate andDate:(NSDate*)endDate
{
    if ([date compare:beginDate] == NSOrderedAscending)
    	return NO;
    
    if ([date compare:endDate] == NSOrderedDescending)
    	return NO;
    
    return YES;
}

@end
