//
//  FlippingLabel.m
//  Flipper
//
//  Created by Mehul Parmar on 17/06/15.
//  Copyright (c) 2015 MehulParmar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "FlippingLabel.h"

@interface FlippingLabelTest : XCTestCase
@property FlippingLabel *flippingLabel;
@end

@implementation FlippingLabelTest

- (void)setUp {
    [super setUp];
    self.flippingLabel = [[FlippingLabel alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.flippingLabel.text = @"A";
}

- (void)tearDown {
    self.flippingLabel = nil;
    [super tearDown];
}

- (void)testFlipToAlphabetChangesText {
    id mockLabel = OCMPartialMock(self.flippingLabel);
    [self.flippingLabel flipToAlphabet:@"B"];
    OCMVerify([mockLabel setText:OCMOCK_ANY]);
}

@end
