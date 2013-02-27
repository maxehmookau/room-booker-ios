//
//  RoomsListViewController.h
//  RoomBooker
//
//  Created by Max Woolf on 27/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RoomCollection.h"
#import <MBProgressHUD/MBProgressHUD.h>

@interface RoomsListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, RoomCollectionDelegate>

{
    IBOutlet UITableView *table;
    RoomCollection *allRoomsCollection;
    MBProgressHUD *hud;
}

@end
