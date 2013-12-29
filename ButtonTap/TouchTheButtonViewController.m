//
//  TouchTheButtonViewController.m
//  ButtonTap
//
//  Created by Hieu Tran on 12/28/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import "TouchTheButtonViewController.h"
#import "PressTheButton.h"

@interface TouchTheButtonViewController ()
- (IBAction)redButton:(id)sender;

@end

@implementation TouchTheButtonViewController

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
    self.PressTheButton * pTB = [[PressTheButton alloc]init];
    [pTB.gamePlay];
	// Do any additional setup after loading the view.
    //NSLog(@"%i",highscore);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)redButton:(id)sender
{
    count++;
    scoreCounter.text = [NSString stringWithFormat:@"Score: %i", count];

}

@end
