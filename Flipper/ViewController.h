//
//  ViewController.h
//  Flipper
//
//  Created by Mehul Parmar on 16/06/15.
//  Copyright (c) 2015 MehulParmar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlippingLabel.h"

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet FlippingLabel *label1;
@property (weak, nonatomic) IBOutlet FlippingLabel *label2;
@property (weak, nonatomic) IBOutlet UITextField *initialValueTextField;
@property (weak, nonatomic) IBOutlet UITextField *finalValueTextField;

@end

