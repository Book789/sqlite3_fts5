//
//  sqlite3_fts5_simpleUITestsLaunchTests.m
//  sqlite3_fts5_simpleUITests
//
//  Created by 天丰互联 on 2022/12/15.
//

#import <XCTest/XCTest.h>

@interface sqlite3_fts5_simpleUITestsLaunchTests : XCTestCase

@end

@implementation sqlite3_fts5_simpleUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
