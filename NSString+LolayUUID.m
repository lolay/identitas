//
//  Created by Lolay, Inc.
//  Copyright 2011 Lolay, Inc. All rights reserved.
//
#import "NSString+LolayUUID.h"

@implementation NSString (LolayUUID)

+ (NSString*) stringWithUUID {
	CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
	NSString* string = uuid == NULL ? nil : (NSString*) CFMakeCollectable(CFUUIDCreateString(kCFAllocatorDefault, uuid));
	CFRelease(uuid);
	if (! string) {
		NSLog(@"[NSString+LolayUUID stringWithUUID] WARNING uuid is nil");
	}
	return [string autorelease];
}

@end