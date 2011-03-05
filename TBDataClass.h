//
//  TBDataClass.h
//  Tongbu
//
//  Created by Brian Olsen on 05/03/11.
//  Copyright 2011 Maven-Group. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface TBDataClass : NSObject
{
    NSString* dataClassName;
}
@property(readonly) NSString* dataClassName;
@property(readonly) NSImage* image;
@property(readonly) NSString* displayName;

+ (id)dataClassWithName:(NSString *)theDataClassName;
- (id)initWithName:(NSString *)theDataClassName;

- (NSImage *)image;
- (NSString *)displayName;

@end
