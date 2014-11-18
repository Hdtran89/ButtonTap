//
//  TouchTheButtonViewController.m
//  ButtonTap
//
//  Created by Hieu Tran on 12/28/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import "TouchTheButtonViewController.h"
#import "PTBLevel2ViewController.h"

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
    
    [self gamePlay];
    
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
    score++;
    
    scoreCounter.text = [NSString stringWithFormat:@"Score: %li",score];

}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{

    switch (buttonIndex)
    {
        case 0:
            [self gamePlay];
            break;
        case 1:
            if (score < 10)
            {
                [self performSegueWithIdentifier:@"oneToMenu" sender:self];
                
            }
            else
            {
                [self performSegueWithIdentifier:@"goLevelTwo" sender:self];
            }
            break;
        case 2:
                [self performSegueWithIdentifier:@"oneToMenu" sender:self];
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
