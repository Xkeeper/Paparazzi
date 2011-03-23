//
//  PaparazziAppDelegate.h
//  Paparazzi
//
//  Created by Xkeeper on 18.02.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListContactsController.h"

@interface PaparazziAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UITabBarController *tabController;
	IBOutlet UINavigationController *contactsNavController;
	IBOutlet UINavigationController *recentNavController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

