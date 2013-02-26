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
    room = [[Room alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testCreatingARoom
{
    STAssertEqualObjects(@"Test", @"Test", @"Test really should equal test...");
}


@end
