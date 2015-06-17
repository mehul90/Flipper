//
//  NSString+Utilities.h
//  Flipper
//
//  Created by Mehul Parmar on 17/06/15.
//  Copyright (c) 2015 MehulParmar. All rights reserved.
//

#import <Foundation/Foundation.h>

FOUNDATION_EXTERN NSString *const ValidCharacters;

@interface NSString (Utilities)

- (NSString *)textForLabelNumber:(NSUInteger)labelNumber;

- (BOOL)isValidCharacter;

- (NSString *)nextCharacterInSequence;

@end
