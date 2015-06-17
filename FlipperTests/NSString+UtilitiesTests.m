//
//  NSString+UtilitiesTests.m
//  Flipper
//
//  Created by Mehul Parmar on 17/06/15.
//  Copyright (c) 2015 MehulParmar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Utilities.h"

@interface NSString_UtilitiesTests : XCTestCase

@end

@implementation NSString_UtilitiesTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testValidCharactersStringNotNil {
    XCTAssertGreaterThan(ValidCharacters.length, 0);
}

- (void)testValidTextForLabelNumber {
    NSString *inputString = @"ABCDEF";
    XCTAssertTrue([[inputString textForLabelNumber:0] isEqualToString:@"A"]);
    XCTAssertTrue([[inputString textForLabelNumber:1] isEqualToString:@"B"]);
    XCTAssertTrue([[inputString textForLabelNumber:2] isEqualToString:@"C"]);
}

- (void)testInValidTextForLabelNumber {
    NSString *inputString = @"A";
    XCTAssertTrue([[inputString textForLabelNumber:0] isEqualToString:@"A"]);
    XCTAssertTrue([[inputString textForLabelNumber:1] isEqualToString:@"-"]);
    XCTAssertTrue([[inputString textForLabelNumber:2] isEqualToString:@"-"]);
}

- (void)testIsValidCharacter {
    XCTAssertTrue([@"A" isValidCharacter]);
    XCTAssertFalse([@"$" isValidCharacter]);
}

- (void)testNextCharacterInSequence {
    XCTAssertTrue([[@"A" nextCharacterInSequence] isEqualToString:@"B"]);
    XCTAssertTrue([[@"%" nextCharacterInSequence] isEqualToString:@"-"]);
}

@end
