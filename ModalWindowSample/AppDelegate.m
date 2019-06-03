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

/**
 @brief シートを開く
 */
- (IBAction)openSheet:(id)sender {
    SheetWindowController *sheetWindowController = [[SheetWindowController alloc] init];
    _sheetWindowController = sheetWindowController;
    
    [self.window beginSheet:_sheetWindowController.window  completionHandler:^(NSModalResponse returnCode) {
        
        NSMutableString *resultMessage = [NSMutableString stringWithString: @"SheetResponse: "];
        
        switch (returnCode) {
            case NSModalResponseOK:
                [resultMessage appendString:@"OK"];
                break;
            case NSModalResponseCancel:
                [resultMessage appendString:@"Cancel"];
                break;
            default:
                break;
        }
        
        self->_resultLabel.stringValue = resultMessage;
    }];
}

/**
 @brief モーダルウィンドウを開く
 */
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
