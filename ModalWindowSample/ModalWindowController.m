//
//  ModalWindowController.m
//  ModalWindowSample
//
//  Created by HIROKI IKEUCHI on 2019/06/03.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "ModalWindowController.h"

@interface ModalWindowController ()

@end

@implementation ModalWindowController
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
    [NSApp stopModalWithCode:NSModalResponseOK];
    [[sender window] orderOut:self];
}

- (IBAction)cancelButtonPush:(id)sender {
    [NSApp stopModalWithCode:NSModalResponseCancel];
    [[sender window] orderOut:self];
}

@end
