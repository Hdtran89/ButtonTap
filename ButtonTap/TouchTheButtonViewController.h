//
//  TouchTheButtonViewController.h
//  ButtonTap
//
//  Created by Hieu Tran on 12/28/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchTheButtonViewController : UIViewController
{
    IBOutlet UILabel *scoreCounter;
    IBOutlet UILabel *time;
    int count;
    NSInteger seconds;
    NSTimer * timer;
    int highscore;
    
}
-(void)subtractTime;
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
-(void)gamePlay;
-(IBAction)redButton:(id)sender;
@end
