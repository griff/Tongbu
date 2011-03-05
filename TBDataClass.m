//
//  TBDataClass.m
//  Tongbu
//
//  Created by Brian Olsen on 05/03/11.
//  Copyright 2011 Maven-Group. All rights reserved.
//

#import "TBDataClass.h"
#import "ISyncManager+Private.h"

@implementation TBDataClass

+ (id)dataClassWithName:(NSString *)theDataClassName
{
    return [[[self alloc] initWithName:theDataClassName] autorelease];
}

- (id)initWithName:(NSString *)theDataClassName
{
    self = [super init];
    if(self)
    {
        dataClassName = [theDataClassName copy];
    }
    return self;
}

- (void)dealloc
{
    [dataClassName release];
    [super dealloc];
}

@synthesize dataClassName;

- (NSImage *)image
{
    return [[ISyncManager sharedManager] imageForDataClassName:dataClassName];
}

- (NSString *)displayName
{
    return [[ISyncManager sharedManager] displayNameForDataClassName:dataClassName];
}

@end
