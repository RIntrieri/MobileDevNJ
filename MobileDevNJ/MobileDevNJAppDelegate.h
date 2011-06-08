//
//  MobileDevNJAppDelegate.h
//  MobileDevNJ
//
//  Created by David Rodriguez on 6/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MobileDevNJViewController;

@interface MobileDevNJAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MobileDevNJViewController *viewController;

@end
