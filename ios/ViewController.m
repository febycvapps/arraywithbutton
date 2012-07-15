//
//  ViewController.m
//  ios
//
//  Created by tandem on 14/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "second.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize array;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    array = [[NSArray alloc]initWithObjects:@"iPod", @"iPhone", @"iPad", nil];
    self.title = @"iOS Devices";
             
}

#pragma mark -Table View Data
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellidentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    if (cell==nil) 
    {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellidentifier]autorelease];
    }
    cell.textLabel.text = [array objectAtIndex:indexPath.row];
    cell.imageView.image=[UIImage imageNamed:@"ios.png"];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    second *sec = [[second alloc]initWithNibName:@"second" bundle:nil];
    [self.navigationController pushViewController: sec animated:YES];
    sec.namelabel.text = [array objectAtIndex:indexPath.row];
}

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    second *sec = [[second alloc]initWithNibName:@"second" bundle:nil];
    [self.navigationController pushViewController: sec animated:YES];
    sec.namelabel.text = [array objectAtIndex:indexPath.row];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
