#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 120000 && __IPHONE_OS_VERSION_MAX_ALLOWED < 120100

#import "Xcode_10_0_XCTest_CDStructures.h"
#import "Xcode_10_0_SharedHeader.h"
#import <Foundation/Foundation.h>

@class XCActivityRecord, XCTestCase, XCTestRun;

//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

@protocol _XCTestObservationPrivate <NSObject>

@optional
- (void)_testCase:(XCTestCase *)arg1 didFinishActivity:(XCActivityRecord *)arg2;
- (void)_testCase:(XCTestCase *)arg1 willStartActivity:(XCActivityRecord *)arg2;
- (void)_testCase:(XCTestRun *)arg1 didMeasureValues:(NSArray *)arg2 forPerformanceMetricID:(NSString *)arg3 name:(NSString *)arg4 unitsOfMeasurement:(NSString *)arg5 baselineName:(NSString *)arg6 baselineAverage:(NSNumber *)arg7 maxPercentRegression:(NSNumber *)arg8 maxPercentRelativeStandardDeviation:(NSNumber *)arg9 maxRegression:(NSNumber *)arg10 maxStandardDeviation:(NSNumber *)arg11 file:(NSString *)arg12 line:(unsigned long long)arg13;
@end

#endif