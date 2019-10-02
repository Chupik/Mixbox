#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 120400 && __IPHONE_OS_VERSION_MAX_ALLOWED < 130000

#import "Xcode_10_3_XCTest_CDStructures.h"
#import "Xcode_10_3_SharedHeader.h"
#import <Foundation/Foundation.h>

@class XCTestExpectation;

//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

@interface XCTPromise : NSObject
{
    // Error parsing type: {atomic_flag="_Value"AB}, name: _promiseFulfilled
    NSError *_error;
    id _value;
    XCTestExpectation *_expectation;
    NSString *_promiseDescription;
}

// Error parsing type for property promiseFulfilled:
// Property attributes: T{atomic_flag=AB},R,V_promiseFulfilled

@property(readonly, copy) NSString *promiseDescription; // @synthesize promiseDescription=_promiseDescription;
@property(readonly) XCTestExpectation *expectation; // @synthesize expectation=_expectation;
@property(retain) id value; // @synthesize value=_value;
@property(retain) NSError *error; // @synthesize error=_error;
- (void)fulfillWithValue:(id)arg1 error:(id)arg2;
- (void)fulfillWithError:(id)arg1;
- (void)fulfillWithValue:(id)arg1;
- (id)initWithDescription:(id)arg1;

@end

#endif