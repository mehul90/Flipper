//
//  ViewController.m
//  Flipper
//
//  Created by Mehul Parmar on 16/06/15.
//  Copyright (c) 2015 MehulParmar. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)goButtonTapped {
    [self.view endEditing:YES];
    [self setTextForLabels];
    
    NSString *label1DestinationAlphabet = [self.finalValueTextField.text textForLabelNumber:0];
    NSString *label2DestinationAlphabet = [self.finalValueTextField.text textForLabelNumber:1];

    ![label1DestinationAlphabet isEqualToString:@"-"] ? [self.label1 flipToAlphabet:label1DestinationAlphabet]:nil;
    ![label2DestinationAlphabet isEqualToString:@"-"] ? [self.label2 flipToAlphabet:label2DestinationAlphabet]:nil;
}

- (void)setTextForLabels {
    self.label1.text = [self.initialValueTextField.text textForLabelNumber:0];
    self.label2.text = [self.initialValueTextField.text textForLabelNumber:1];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSUInteger oldLength = [textField.text length];
    NSUInteger replacementLength = string.length;
    NSUInteger rangeLength = range.length;
    NSUInteger newLength = oldLength - rangeLength + replacementLength;
    BOOL returnKey = [string rangeOfString: @"\n"].location != NSNotFound;
    return (newLength <= 2 || returnKey);
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField == self.initialValueTextField) {
        [self setTextForLabels];
    }
}

@end
