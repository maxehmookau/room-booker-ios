//
//  BookingTests.m
//  RoomBooker
//
//  Created by Max Woolf on 26/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import "BookingTests.h"

@implementation BookingTests

- (void)testCreatingABooking
{
    Room *library = [[Room alloc] initWithName:@"Library"];
    Booking *testBooking = [[Booking alloc] initWithRoom:library startTime:[NSDate dateWithTimeIntervalSince1970:100] endTime:[NSDate dateWithTimeIntervalSince1970:150]];
    STAssertEqualObjects([[testBooking room] name], @"Library", nil);
    STAssertEqualObjects([testBooking startTime], [NSDate dateWithTimeIntervalSince1970:100], nil);
    STAssertEqualObjects([testBooking endTime], [NSDate dateWithTimeIntervalSince1970:150], nil);
}


@end
