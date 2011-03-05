//
//  TongbuAppDelegate.h
//  Tongbu
//
//  Created by Brian Olsen on 27/02/11.
//  Copyright 2011 Maven-Group. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <SyncServices/SyncServices.h>

@interface TongbuAppDelegate : NSObject <NSApplicationDelegate,ISyncSessionDriverDataSource> {
    NSWindow *window;
    ISyncSessionDriver* sessionDriver;
}

@property (assign) IBOutlet NSWindow *window;

- (NSArray *)dataClassesSorting;
- (NSArray *)dataClasses;

@end
