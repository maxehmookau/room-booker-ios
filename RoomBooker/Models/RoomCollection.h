//
//  RoomCollection.h
//  RoomBooker
//
//  Created by Max Woolf on 27/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RoomCollection;

@protocol RoomCollectionDelegate <NSObject>

- (void)didFinishGettingRooms;

@end

@interface RoomCollection : NSObject <NSURLConnectionDataDelegate>
{
    NSURLConnection *connection;
    id _delegate;
    NSMutableData *receivedData;
    
    NSMutableArray *_rooms;
}

- (void)allRooms;

@property (nonatomic) id delegate;
@property (nonatomic) NSMutableArray *rooms;

@end
