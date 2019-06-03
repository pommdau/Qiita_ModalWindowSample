//
//  AppDelegate.m
//  ModalWindowSample
//
//  Created by HIROKI IKEUCHI on 2019/06/03.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindowController.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *window;
@property (strong) MainWindowController *mainWindowController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    _mainWindowController = [[MainWindowController alloc] initWithWindowNibName: MainWindowController.className];
    [_mainWindowController showWindow:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
