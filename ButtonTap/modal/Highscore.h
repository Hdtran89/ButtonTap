//
//  Highscore.h
//  ButtonTap
//
//  Created by Hieu Tran on 12/28/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Highscore : NSObject
{
    NSNumber *score;
    NSString *name;
}

@property(strong,retain) NSNumber*score;
@property(strong,retain) NSString*name;

-(id)initWithName:(NSString *)nameObj andScore:(NSNumber*)scoreObj;
+(void)saveHighScore:(NSNumber *)score withName:(NSString*)name;
+(NSArray *)getTopHighScore:(NSUInteger)numberOfScores;

@end
