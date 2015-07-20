//
//  ViewControllerTest.m
//  Flipper
//
//  Created by Mehul Parmar on 17/06/15.
//  Copyright (c) 2015 MehulParmar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ViewController.h"
#import <OCMock/OCMock.h>

@interface ViewControllerTest : XCTestCase
@property ViewController *viewController;
@end

@implementation ViewControllerTest

- (void)setUp {
    [super setUp];
    
    NSString *const StoryboardName = @"Main";
    NSString *const ViewControllerIdentifier = @"InitialViewControllerId";
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:StoryboardName bundle:nil];
    self.viewController = [storyBoard instantiateViewControllerWithIdentifier:ViewControllerIdentifier];
}

- (void)tearDown {
    self.viewController = nil;
    [super tearDown];
}

- (void)testGoButtonTriggersLabelFlip {
    UIButton *goButton = (UIButton *)[self.viewController.view viewWithTag:50];
    id mockLabel1 = OCMPartialMock(self.viewController.label1);
    id mockLabel2 = OCMPartialMock(self.viewController.label2);

    [goButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    
    ![self.viewController.label1.text isEqualToString:@"-"] ? OCMVerify([mockLabel1 flipToAlphabet:OCMOCK_ANY]) : [[mockLabel1 reject] flipToAlphabet:OCMOCK_ANY];
    ![self.viewController.label2.text isEqualToString:@"-"] ? OCMVerify([mockLabel2 flipToAlphabet:OCMOCK_ANY]) : [[mockLabel2 reject] flipToAlphabet:OCMOCK_ANY];
}

@end
