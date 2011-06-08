//
//  MobileDevNJViewController.m
//  MobileDevNJ
//
//  Created by David Rodriguez on 6/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MobileDevNJViewController.h"

@implementation MobileDevNJViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    touches = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [followView addGestureRecognizer:touches];
    
    [followTextField setDelegate:self];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    [touches release];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

////////////////////// GESTURE RECOGNIZER //////////////////////////

-(void) handleTap:(UITapGestureRecognizer *) sender {
    if( sender.state == UIGestureRecognizerStateEnded )
    {
        CGPoint touchPoint = [sender locationInView:followView];
        CGRect labelFrame = followLabel.frame;
        
        [UIView beginAnimations:@"Follow Label" context:NULL];
        [UIView setAnimationBeginsFromCurrentState:YES];
        [UIView setAnimationDuration:0.4];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        
        [followLabel setFrame:CGRectMake(touchPoint.x - labelFrame.size.width/2, 
                                        touchPoint.y - labelFrame.size.height/2,
                                        labelFrame.size.width, labelFrame.size.height)];
        
        [UIView commitAnimations];
    }
}


////////////////////// TEXT FIELD //////////////////////////

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    followLabel.text = textField.text;
    [followLabel sizeToFit];
    
    [textField resignFirstResponder];

    return NO;
}


@end
