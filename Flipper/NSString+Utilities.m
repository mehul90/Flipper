//
//  NSString+Utilities.m
//  Flipper
//
//  Created by Mehul Parmar on 17/06/15.
//  Copyright (c) 2015 MehulParmar. All rights reserved.
//

#import "NSString+Utilities.h"

NSString *const ValidCharacters = @"ABCDEFGHIJKLMNOPQRSTUVWXZY";//0123456789

@implementation NSString (Utilities)

- (NSString *)textForLabelNumber:(NSUInteger)labelNumber {
    return self.length > labelNumber && self.length > 0 ? [[self substringWithRange:NSMakeRange(labelNumber, 1)] uppercaseString] : @"-";
}

- (BOOL)isValidCharacter {
    return [ValidCharacters containsString:self];
}

- (NSString *)nextCharacterInSequence {
    if ([ValidCharacters containsString:self]) {
        NSUInteger indexOfNextAlphabet;
        NSRange range = [ValidCharacters rangeOfString:self];
        if (range.location == ValidCharacters.length - 1) {
            indexOfNextAlphabet = 0;
        } else {
            indexOfNextAlphabet = range.location + 1;
        }
        return [ValidCharacters substringWithRange:NSMakeRange(indexOfNextAlphabet, 1)];
    }
    return @"-";
}

@end
