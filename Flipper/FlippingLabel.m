//
//  FlippingLabel.m
//  Flipper
//
//  Created by Mehul Parmar on 17/06/15.
//  Copyright (c) 2015 MehulParmar. All rights reserved.
//

#import "FlippingLabel.h"

@implementation FlippingLabel

- (void)flipToAlphabet:(NSString *)alphabet {
    [UIView transitionWithView:self
                      duration:0.3
                       options:UIViewAnimationOptionTransitionFlipFromTop
                    animations: ^{
                        self.text = [self.text nextCharacterInSequence];
                    }
                    completion: ^(BOOL finished) {
                        if (![self.text isEqualToString:alphabet]) {
                            if (![[self.text nextCharacterInSequence] isEqualToString:@"-"]) {
                                [self flipToAlphabet:alphabet];
                            }
                        }
                    }];
}

@end
