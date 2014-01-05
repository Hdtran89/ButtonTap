//
//  TouchTheButtonViewController.h
//  ButtonTap
//
//  Created by Hieu Tran on 12/28/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PTBLevel2ViewController;

@interface TouchTheButtonViewController : UIViewController
{
    IBOutlet UILabel *scoreCounter;
    IBOutlet UILabel *time;
    NSInteger score;
    NSInteger seconds;
    NSTimer * timer;
    
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
-(IBAction)redButton:(id)sender;
-(void)timeKeeper;
-(void)gamePlay;
@end
