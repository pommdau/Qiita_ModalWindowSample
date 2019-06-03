//
//  AppDelegate.m
//  ModalWindowSample
//
//  Created by HIROKI IKEUCHI on 2019/06/03.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "AppDelegate.h"
#import "SheetWindowController.h"
#import "ModalWindowController.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSTextField *resultLabel;
@property SheetWindowController *sheetWindowController;
@property ModalWindowController *modalWindowController;
@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)openSheet:(id)sender {
    
}

- (IBAction)openModalWindow:(id)sender {
    ModalWindowController *modalWindowController = [[ModalWindowController alloc] init];
    _modalWindowController = modalWindowController;
    
    NSModalResponse result = [NSApp runModalForWindow:_modalWindowController.window];
    NSMutableString *resultMessage = [NSMutableString stringWithString: @"ModalWindowResponse: "];
    if (result == NSModalResponseOK) {
        [resultMessage appendString:@"OK"];
        
    } else if (result == NSModalResponseCancel) {
         [resultMessage appendString:@"Cancel"];
    }
    _resultLabel.stringValue = resultMessage;
}

@end
