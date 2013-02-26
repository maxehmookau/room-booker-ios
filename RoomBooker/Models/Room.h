//
//  Room.h
//  RoomBooker
//
//  Created by Max Woolf on 26/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Booking.h"

@interface Room : NSObject
{
    // Display name for the room
    NSString *_name;
    
    //Array of Booking objects
    NSMutableArray *_bookings;
}

- (id)initWithName:(NSString *)aName;
- (void)addBooking:(Booking *)aBooking;
- (BOOL)isOccupiedAt:(NSDate *)aDate;
- (BOOL)isCurrentlyOccupied;


+ (BOOL)date:(NSDate*)date isBetweenDate:(NSDate*)beginDate andDate:(NSDate*)endDate;

@property (nonatomic) NSString *name;
@property (nonatomic) NSMutableArray *bookings;

@end
