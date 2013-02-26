//
//  RoomTests.m
//  RoomBooker
//
//  Created by Max Woolf on 26/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import "RoomTests.h"

@implementation RoomTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testCreatingARoom
{
    room = [[Room alloc] init];
    STAssertEquals([room class], [Room class], nil);
}

- (void)testCreatingARoomWithAName
{
    room = [[Room alloc] initWithName:@"Library"];
    STAssertEqualObjects([room name], @"Library", nil);
}

- (void)testAddingABooking
{
    room = [[Room alloc] initWithName:@"Library"];
    Booking *testBooking = [[Booking alloc] initWithRoom:room startTime:[NSDate dateWithTimeIntervalSince1970:100] endTime:[NSDate dateWithTimeIntervalSince1970:150]];
    [room addBooking:testBooking];
    STAssertEquals([[room bookings] objectAtIndex:0], testBooking, nil);
    
}

- (void)testCheckingRoomIsOccupiedWhenEmpty
{
    Room *library = [[Room alloc] initWithName:@"Library"];
    Booking *testBooking = [[Booking alloc] initWithRoom:library startTime:[NSDate dateWithTimeIntervalSince1970:100] endTime:[NSDate dateWithTimeIntervalSince1970:150]];
    [library addBooking:testBooking];
    STAssertFalse([library isCurrentlyOccupied], nil);
}

- (void)testCheckingRoomIsOccupied
{
    Room *library = [[Room alloc] initWithName:@"Library"];
    Booking *testBooking = [[Booking alloc] initWithRoom:library startTime:[NSDate date] endTime:[NSDate dateWithTimeInterval:10 sinceDate:[NSDate date]]];
    [library addBooking:testBooking];
    STAssertTrue([library isCurrentlyOccupied], nil);
}


@end
