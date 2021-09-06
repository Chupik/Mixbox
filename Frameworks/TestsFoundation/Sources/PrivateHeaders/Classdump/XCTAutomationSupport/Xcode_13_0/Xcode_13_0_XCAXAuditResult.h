#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 150000 && __IPHONE_OS_VERSION_MAX_ALLOWED < 160000

#import "Xcode_13_0_XCTAutomationSupport_CDStructures.h"
#import "Xcode_13_0_SharedHeader.h"
#import <Foundation/Foundation.h>

@class XCAccessibilityElement;

//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

@interface XCAXAuditResult : NSObject <NSSecureCoding>
{
    NSString *_shortDescription;
    NSString *_longDescription;
    XCAccessibilityElement *_element;
    long long _issueCode;
}

+ (_Bool)supportsSecureCoding;
@property(nonatomic) long long issueCode; // @synthesize issueCode=_issueCode;
@property(copy, nonatomic) XCAccessibilityElement *element; // @synthesize element=_element;
@property(copy, nonatomic) NSString *longDescription; // @synthesize longDescription=_longDescription;
@property(copy, nonatomic) NSString *shortDescription; // @synthesize shortDescription=_shortDescription;
- (id)description;
- (void)encodeWithCoder:(id)arg1;
- (id)initWithCoder:(id)arg1;

@end

#endif