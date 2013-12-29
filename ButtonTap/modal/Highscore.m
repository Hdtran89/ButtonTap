//
//  Highscore.m
//  ButtonTap
//
//  Created by Hieu Tran on 12/28/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import "Highscore.h"
#import <Parse/Parse.h>

@implementation Highscore

+(void)saveHighScore:(NSNumber *)score withName:(NSString *)name
{
    PFObject *scoreObject = [[PFObject alloc]initWithClassName:@"HighScore"];
    [scoreObject setObject:score forKey:@"Score"];
    [scoreObject setObject:name forKey:@"Name"];
    [scoreObject save];

}
+(NSArray *)getTopHighScore:(NSUInteger)numberOfScores
{
    PFQuery *query = [[PFQuery alloc]initWithClassName:@"HighScore"];
    query.limit = [NSNumber numberWithUnsignedInteger:numberOfScores];
    query.order = @"-score";
    
    NSMutableArray *highScoreObjects = [[NSMutableArray alloc]initWithCapacity:numberOfScores];
    
    NSUInteger i = 0;
    
    for (PFObject *object in object)
    {
        Highscore * highScore = [[Highscore alloc]initWithName:[object objectForKey:@"Name"] andScore:[object objectForKey:@"Score"]];
        [highScoreObjects insertObject:highScore atIndex:i];
        i++;
    }
    
    return highScoreObjects;
    
}
@end
