#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 150000 && __IPHONE_OS_VERSION_MAX_ALLOWED < 160000

#import "Xcode_13_0_XCTAutomationSupport_CDStructures.h"
#import "Xcode_13_0_SharedHeader.h"
#import <Foundation/Foundation.h>

@class XCTImageEncoding;

//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

@interface XCTScreenshotRequest : NSObject <NSSecureCoding>
{
    unsigned int _screenID;
    XCTImageEncoding *_encoding;
    struct CGRect _rect;
}

+ (_Bool)supportsSecureCoding;
@property(readonly) XCTImageEncoding *encoding; // @synthesize encoding=_encoding;
@property(readonly) struct CGRect rect; // @synthesize rect=_rect;
@property(readonly) unsigned int screenID; // @synthesize screenID=_screenID;
- (id)initWithCoder:(id)arg1;
- (void)encodeWithCoder:(id)arg1;
- (id)initWithScreenID:(unsigned int)arg1 rect:(struct CGRect)arg2 encoding:(id)arg3;

@end

#endif