//
//  RoomsListViewController.m
//  RoomBooker
//
//  Created by Max Woolf on 27/02/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import "RoomsListViewController.h"
#import "Room.h"
#import <MBProgressHUD/MBProgressHUD.h>
#import "RoomOverviewView.h"
#import "SVPullToRefresh.h"

@interface RoomsListViewController ()

@end

@implementation RoomsListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didFinishGettingRooms
{
    [table reloadData];
    [hud hide:YES afterDelay:0.4];
    [table.pullToRefreshView stopAnimating];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    Room *currentRoom = (Room *)[[allRoomsCollection rooms] objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Ident"];
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Ident"];
    }
    
    [cell addSubview:[[RoomOverviewView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 100) room:currentRoom]];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[allRoomsCollection rooms] count];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    allRoomsCollection = [[RoomCollection alloc] init];
    [allRoomsCollection setDelegate:self];
    [allRoomsCollection allRooms];
    
    [table addPullToRefreshWithActionHandler:^{
        [self viewDidAppear:NO];
        [allRoomsCollection allRooms];
    }];
}

- (void)viewDidAppear:(BOOL)animated
{
    hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.labelText = @"Getting rooms...";
    [hud show:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
