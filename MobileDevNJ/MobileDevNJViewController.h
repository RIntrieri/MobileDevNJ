//
//  MobileDevNJViewController.h
//  MobileDevNJ
//
//  Created by David Rodriguez on 6/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MobileDevNJViewController : UIViewController <UITextFieldDelegate> {
    UITapGestureRecognizer *touches;
    
    IBOutlet UITextField *followTextField;
    IBOutlet UIView *followView;
    IBOutlet UILabel *followLabel;
}     

-(void) handleTap:(UITapGestureRecognizer *) sender;

@end
