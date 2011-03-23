//
//  ListContactsController.m
//  Paparazzi
//
//  Created by Xkeeper on 18.02.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ListContactsController.h"


@implementation ListContactsController
/*-(IBAction)clickViewButt:(id) sender{
	
	DetailedContactViewController *tempControl = [[DetailedContactViewController alloc] 
												  initWithNibName:@"DetailedContact" bundle:nil];
    int num = [sender tag];
    switch (num) {
        case 1:
        {
            tempControl.UserName = @"John";
            break;
        }
        case 2:
        {
            tempControl.UserName = @"Mike";
            break;
        }
        default:
            tempControl.UserName = @"Null";
            break;
    }
	[self.navigationController pushViewController:tempControl animated:YES];
	[tempControl release];
}
*/
-(id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        authors = [[NSMutableArray arrayWithObjects:@"John",@"Mikle",@"Alex", nil] retain];
    }
    return self;
}
-(NSString *)nameForIndexPath:(NSIndexPath *)indexPath
{
    
    return [authors objectAtIndex:indexPath.row];
}

-(UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyCell"] autorelease];
    }
    cell.textLabel.text = [self nameForIndexPath:indexPath];
    return cell;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [authors count];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *name = [self nameForIndexPath:indexPath];
    DetailedContactViewController *tempControl = [[DetailedContactViewController alloc]
                                                  initWithNibName:@"DetailedContact" bundle:nil];
    tempControl.UserName = name;
    [self.navigationController pushViewController:tempControl animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.title = @"Contacts";
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [authors release];
    [super dealloc];
}


@end
