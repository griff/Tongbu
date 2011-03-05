//
//  TongbuAppDelegate.m
//  Tongbu
//
//  Created by Brian Olsen on 27/02/11.
//  Copyright 2011 Maven-Group. All rights reserved.
//

#import "TongbuAppDelegate.h"
#import "ISyncManager+Private.h"
#import "TBDataClass.h"

@implementation TongbuAppDelegate

- (void)dealloc
{
    [sessionDriver release];
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    sessionDriver = [[ISyncSessionDriver sessionDriverWithDataSource:self] retain];
}

@synthesize window;

- (NSArray *)dataClassesSorting
{
    return [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"displayName" ascending:YES]];
}

- (NSArray *)dataClasses
{
    NSArray* dataClassNames = [[ISyncManager sharedManager] allDataClassNames];
    NSMutableArray* ret = [NSMutableArray arrayWithCapacity:[dataClassNames count]];
    for(NSString* dataClassName in dataClassNames)
    {
        [ret addObject:[TBDataClass dataClassWithName:dataClassName]];
    }
    return ret;
}


- (NSString *)clientIdentifier
{
    return @"org.maven-group.Tongbu";
}

- (NSURL *)clientDescriptionURL
{
    return [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"ClientDescription" ofType:@"plist"]];
}

- (NSArray *)schemaBundleURLs
{
    return [NSArray array];
}

- (ISyncSessionDriverMode)preferredSyncModeForEntityName:(NSString *)entity
{
    //return ISyncSessionDriverModeRefresh;
    return ISyncSessionDriverModeSlow;
}

- (NSDictionary *)recordsForEntityName:(NSString *)entity 
                            moreComing:(BOOL *)moreComing
                                 error:(NSError **)outError
{
    return nil;
}

- (ISyncSessionDriverChangeResult)applyChange:(ISyncChange *)change
                                forEntityName:(NSString *)entityName
                     remappedRecordIdentifier:(NSString **)outRecordIdentifier
                              formattedRecord:(NSDictionary **)outRecord
                                        error:(NSError **)outError
{
    return ISyncSessionDriverChangeRefused;
}

- (BOOL)deleteAllRecordsForEntityName:(NSString *)entityName
                                error:(NSError **)outError
{
    return NO;
}

@end
