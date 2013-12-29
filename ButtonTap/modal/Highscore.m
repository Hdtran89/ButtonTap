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
    NSMutableArray *highScoreObjects = [[NSMutableArray alloc]initWithCapacity:numberOfScores];
    
    NSUInteger i = 0;
    PFQuery *query = [PFQuery queryWithClassName:@"ObjectSavedToParse"];
    query.cachePolicy = kPFCachePolicyNetworkElseCache;
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // Results were successfully found, looking first on the
            // network and then on disk.
        } else {
            // The network was inaccessible and we have no cached data for
            // this query.
        }
    }];
    for (i=0; i<numberOfScores; i++)
    {
        Highscore * highScore = [[Highscore alloc]initWithName:[objects objectForKey:@"Name"] andScore:[objects objectForKey:@"Score"]];
        [highScoreObjects insertObject:highScore atIndex:i];
    }
    
    return highScoreObjects;
    
}
@end
