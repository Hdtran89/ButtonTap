//
//  PressTheButton.h
//  ButtonTap
//
//  Created by Hieu Tran on 12/29/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PressTheButton : NSObject
{
    int count;
    NSInteger seconds;
    NSTimer * timer;
}
-(void)subtractTime;
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
-(void)gamePlay;
@end
