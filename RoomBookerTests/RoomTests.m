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


@end
