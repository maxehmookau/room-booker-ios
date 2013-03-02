//
//  RoomDayViewController.m
//  RoomBooker
//
//  Created by Max Woolf on 02/03/2013.
//  Copyright (c) 2013 BoxUK. All rights reserved.
//

#import "RoomDayViewController.h"

@interface RoomDayViewController ()

@end

@implementation RoomDayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    dayView = [[MADayView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    dayView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:dayView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
