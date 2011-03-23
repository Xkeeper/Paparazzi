//
//  ListContactsController.h
//  Paparazzi
//
//  Created by Xkeeper on 18.02.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailedContactViewController.h"


@interface ListContactsController : UITableViewController {
	IBOutlet UIButton *viewButt;
	IBOutlet UILabel *nameLabel;
    NSMutableArray *authors;

}
//-(IBAction)clickViewButt:(id)sender;
-(NSString *)nameForIndexPath:(NSIndexPath *)IndexPath;

@end
