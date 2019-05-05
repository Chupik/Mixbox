#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 120100 && __IPHONE_OS_VERSION_MAX_ALLOWED < 120200

#import "Xcode10_1_XCTest_CDStructures.h"
#import "Xcode10_1_SharedHeader.h"
#import <XCTest/XCTest.h>
#import <XCTest/XCTestSuite.h>

//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

@interface XCTestSuite ()
{
    id _internalImplementation;
}

+ (id)testClassSuitesForTestIdentifiers:(id)arg1 skippingTestIdentifiers:(id)arg2 testExecutionOrdering:(long long)arg3;
+ (id)testSuiteForTestConfiguration:(id)arg1;
+ (void)_applyRandomExecutionOrderingSeed:(id)arg1;
+ (id)allTests;

+ (id)suiteForBundleCache;
+ (void)invalidateCache;
+ (id)_suiteForBundleCache;
+ (id)emptyTestSuiteNamedFromPath:(id)arg1;

+ (id)testCaseNamesForScopeNames:(id)arg1;
- (id)_initWithTestConfiguration:(id)arg1;
- (void)_applyRandomExecutionOrdering;
- (void)_sortTestsUsingDefaultExecutionOrdering;
- (long long)defaultExecutionOrderCompare:(id)arg1;
@property(readonly) NSDictionary *activityAggregateStatistics;
- (void)_mergeActivityStatistics:(id)arg1;
- (void)performTest:(id)arg1;
- (void)_performProtectedSectionForTest:(id)arg1 testSection:(CDUnknownBlockType)arg2;
- (void)_recordUnexpectedFailureForTestRun:(id)arg1 description:(id)arg2 exception:(id)arg3;
- (void)recordFailureWithDescription:(id)arg1 inFile:(id)arg2 atLine:(unsigned long long)arg3 expected:(_Bool)arg4;
- (Class)testRunClass;
- (Class)_requiredTestRunBaseClass;
- (_Bool)isEqual:(id)arg1;
- (unsigned long long)testCaseCount;
- (void)setTests:(id)arg1;

- (id)_testSuiteWithIdentifier:(id)arg1;
- (id)description;
@property(copy) NSString *name;

- (id)init;
- (void)removeTestsWithNames:(id)arg1;

@end

#endif