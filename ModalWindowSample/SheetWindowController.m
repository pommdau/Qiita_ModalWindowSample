//
//  SheetWindowController.m
//  ModalWindowSample
//
//  Created by HIROKI IKEUCHI on 2019/06/03.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "SheetWindowController.h"

@interface SheetWindowController ()

@end

@implementation SheetWindowController
- (id)init {
    if (self = [super initWithWindowNibName:[self className] owner:self]) {
        
    }
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)okButtonPush:(id)sender {
    [self.window.sheetParent endSheet:self.window returnCode:NSModalResponseOK];

}

- (IBAction)cancelButtonPush:(id)sender {
    [self.window.sheetParent endSheet:self.window returnCode:NSModalResponseCancel];
}

@end
