//
//  PTBLevel2ViewController.h
//  ButtonTap
//
//  Created by Hieu Tran on 12/29/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PTBLevel2ViewController:UIViewController
{
    IBOutlet UILabel *scoreCounter;
    IBOutlet UILabel *time;
    NSInteger score;
    NSInteger seconds;
    NSTimer * timer;
    
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
-(IBAction)whiteButton:(id)sender;
- (IBAction)blackButton:(id)sender;
-(void)timeKeeper;
-(void)gamePlay;
@end
