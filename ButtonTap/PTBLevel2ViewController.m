//
//  PTBLevel2ViewController.m
//  ButtonTap
//
//  Created by Hieu Tran on 12/29/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import "PTBLevel2ViewController.h"

@interface PTBLevel2ViewController ()

@end

@implementation PTBLevel2ViewController


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
    
    [self gamePlay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)whiteButton:(id)sender
{
    score++;
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{    switch (buttonIndex)
    {
        case 0:
            [self gamePlay];
            break;
        case 1:
            if (score < 10)
            {
                [self performSegueWithIdentifier:@"twoToMenu" sender:self];
                
            }
            else
            {
                [self performSegueWithIdentifier:@"goLevelThree" sender:self];
            }
            break;
        case 2:
             [self performSegueWithIdentifier:@"twoToMenu" sender:self];
            break;
        default:
            break;
    }
}
-(void)gamePlay
{
    seconds = 15;
    score = 0;
    
    time.text = [NSString stringWithFormat:@"Time: %li",seconds];
    scoreCounter.text = [NSString stringWithFormat:@"Score: %li", score];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(timeKeeper)
                                           userInfo:Nil
                                            repeats:YES];
    
}
- (IBAction)blackButton:(id)sender
{
    score++;
}

-(void)timeKeeper
{
    seconds--;
    
    time.text = [NSString stringWithFormat:@"Time: %li", seconds];
    
    if (seconds == 0)
    {
        [timer invalidate];
        
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Time is up!!"
                                                        message:[NSString stringWithFormat:@"Your score is: %li",score]
                                                       delegate:self
                                              cancelButtonTitle:@"Try Again"
                                              otherButtonTitles:@"Next Level",@"Main Menu",nil];
        [alert show];
    }
    
}
@end
