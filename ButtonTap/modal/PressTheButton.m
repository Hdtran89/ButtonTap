//
//  PressTheButton.m
//  ButtonTap
//
//  Created by Hieu Tran on 12/29/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import "PressTheButton.h"

@implementation PressTheButton

-(void)gamePlay
{
    seconds = 15;
    count = 0;
    
    time.text = [NSString stringWithFormat:@"Time: %li",seconds];
    scoreCounter.text = [NSString stringWithFormat:@"Score: %i", count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:Nil
                                            repeats:YES];
    
}
-(void)subtractTime
{
    seconds--;
    time.text = [NSString stringWithFormat:@"Time: %li", seconds];
    
    if (seconds == 0)
    {
        [timer invalidate];
        
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Time is up!!"
                                                        message:[NSString stringWithFormat:@"Your score is: %i",count]
                                                       delegate:self
                                              cancelButtonTitle:@"Try Again"
                                              otherButtonTitles:@"Next Level",@"Main Menu",nil];
        [alert show];
    }
    
}
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    switch (buttonIndex)
    {
        case 0:
            [self gamePlay];
            break;
        case 1:
            if (count == 100)
            {
                
            }
            break;
        case 2:
            [self dismissModalViewControllerAnimated:YES];
            break;
        default:
            break;
    }
}

@end
