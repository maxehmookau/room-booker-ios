//
//  RoomCollection.m
//  RoomBooker
//
//  Created by Max Woolf on 27/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import "RoomCollection.h"
#import "Room.h"

@implementation RoomCollection

-(void)allRooms
{
    NSURL *url = [NSURL URLWithString:@"http://roombooker.herokuapp.com/api/rooms"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    receivedData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [receivedData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    _rooms = [[NSMutableArray alloc] init];
    NSLog(@"%@", [[NSString alloc] initWithData:receivedData encoding:NSUTF8StringEncoding]);
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:receivedData options:NSJSONReadingAllowFragments error:nil];
    for (NSDictionary *currentRoom in [json objectForKey:@"rooms"]) {
        Room *room = [[Room alloc] initWithName:[currentRoom valueForKey:@"title"]];
        [_rooms addObject:room];
    }
    [_delegate didFinishGettingRooms];
}

@end
