//
//  Created by Lolay, Inc.
//  Copyright 2011 Lolay, Inc. All rights reserved.
//
#import "NSString+LolayUUID.h"

@implementation NSString (LolayUUID)

+ (NSString*) stringWithUUID {
	CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
	NSString* string = (NSString*)CFMakeCollectable(CFUUIDCreateString(kCFAllocatorDefault, uuid));
	CFRelease(uuid);
	return [string autorelease];
}

@end