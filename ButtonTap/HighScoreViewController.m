//
//  HighScoreViewController.m
//  ButtonTap
//
//  Created by Hieu Tran on 12/28/13.
//  Copyright (c) 2013 Watdahieu. All rights reserved.
//

#import "HighScoreViewController.h"
#import "TouchTheButtonViewController.h"
#import <Parse/Parse.h>

@interface HighScoreViewController ()
@property(strong,nonatomic)NSMutableArray *saveHighscore;
@end

@implementation HighScoreViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    highscore = [[[NSUserDefaults standardUserDefaults] objectForKey:@"HighScore"] intValue ];
    
    self.saveHighscore = [[NSMutableArray alloc] init];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.saveHighscore count ];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"listOfScore";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [[self.saveHighscore objectAtIndex:indexPath.row]objectForKey:@"Name"];
    cell.detailTextLabel.text = [[self.saveHighscore objectAtIndex:indexPath.row]objectForKey:@"Highscore"];
    
    return cell;
}


@end
