//
//  ISyncManager+Private.h
//  Tongbu
//
//  Created by Brian Olsen on 05/03/11.
//  Copyright 2011 Maven-Group. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <SyncServices/SyncServices.h>

@interface ISyncManager (Private)

- (id)allEntityNames;
- (id)entityNamesInDataClassName:(id)dataClassName;
- (id)entityNamesInDataClassNames:(id)dataClassNames;
- (id)displayNameForEntityName:(id)entityName;

- (NSArray *)allDataClassNames;
- (NSString *)displayNameForDataClassName:(id)dataClassName;
- (NSImage *)imageForDataClassName:(id)dataClassName;

- (id)attributeNamesOnEntityName:(id)entityName;

- (id)typeForPropertyName:(id)propertyName;

@end
