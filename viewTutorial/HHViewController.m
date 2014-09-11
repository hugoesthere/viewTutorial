//
//  HHViewController.m
//  viewTutorial
//
//  Created by Hugo Ho on 9/10/14.
//  Copyright (c) 2014 Hugo Ho. All rights reserved.
//


#import "HHGrid.h"
#import "HHViewController.h"



@interface HHViewController () {
    UIButton* _button;
    UIView* _gridView;
}

@end



@implementation HHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
	// Do any additional setup after loading the view, typically from a nib.
    
    //create grid frame
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetHeight(frame)*.1;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*.80;
    
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    //create grid view
    _gridView = [[HHGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    //create button
    CGFloat buttonSize = size/5.0;
    CGRect buttonFrame = CGRectMake(0,0, buttonSize, buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    [_gridView addSubview:_button];
    
    _button.showsTouchWhenHighlighted = YES;
    
    //create target for button
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [_button setTitle:@"Hit me!" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender
{
    NSLog(@"You Pressed the button!");
}

@end
