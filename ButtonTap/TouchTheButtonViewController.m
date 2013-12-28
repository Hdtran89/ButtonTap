//
//  TouchTheButtonViewController.m
//  ButtonTap
//
//  Created by Hieu Tran on 12/28/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import "TouchTheButtonViewController.h"

@interface TouchTheButtonViewController ()
- (IBAction)redButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *timer;
@property (weak, nonatomic) IBOutlet UILabel *scoreCounter;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)redButton:(id)sender
{
    count++;
    _scoreCounter.text = [NSString stringWithFormat:@"Score: %li", count];
}
-(void)gamePlay
{
    seconds = 30;
    count = 0;
    
    _timer.text = [NSString stringWithFormat:@"Timer: %li",seconds];
    _scoreCounter.text = [NSString stringWithFormat:@"Score: %li", count];
    
    
    
}
-(void)subtractTime
{
    seconds--;
    _timer.text = [NSString stringWithFormat:@"Timer: %li", seconds];
    
    if (seconds == 0)
    {
        [timer invalidate];
        
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Time is up!!"
                                                        message:[NSString stringWithFormat:@"Your score is: %li",count]
                                                       delegate:self
                                              cancelButtonTitle:@"Play Again"
                                              otherButtonTitles:@"Go Back", nil];
        [alert show];
    }
    
}
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self gamePlay];
}


@end