//
//  Room.h
//  RoomBooker
//
//  Created by Max Woolf on 26/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Room : NSObject
{
    // Display name for the room
    NSString *_name;
    
    //Array of Booking objects
    NSArray *_bookings;
}

- (id)initWithName:(NSString *)aName;

@property (nonatomic) NSString *name;
@property (nonatomic) NSArray *bookings;

@end
