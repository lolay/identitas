//
//  Created by Lolay, Inc.
//  Copyright 2011 Lolay, Inc. All rights reserved.
//
#import "NSString+LolayUUID.h"

@implementation NSString (LolayUUID)

+ (NSString*) stringWithUUID {
	CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
	NSString* string = uuid == NULL ? nil : (__bridge_transfer NSString*) CFUUIDCreateString(kCFAllocatorDefault, uuid);
    if(uuid) {
        CFRelease(uuid);
    }
	if (! string) {
		DLog(@"[NSString+LolayUUID stringWithUUID] WARNING uuid is nil");
	}
	return string;
}

@end