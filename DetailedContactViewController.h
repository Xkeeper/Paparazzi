//
//  DetailedContactViewController.h
//  Paparazzi
//
//  Created by Xkeeper on 18.02.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailedContactViewController : UIViewController {
	NSString *UserName;
	IBOutlet UILabel *mylabel;

}
@property (nonatomic,retain) NSString *UserName;
@property (nonatomic,retain) IBOutlet UILabel *mylabel;

@end
