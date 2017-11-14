//
//  CHOOrderLayout.m
//  CHOMontage_Example
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOOrderLayout.h"

@implementation CHOOrderLayout

CHO_MONTAGE_TABLE_LAYOUT_ANNOTATION(CHOMontageOrderID)

- (instancetype)init {
    self = [super init];
    if (self) {
        self.height = 88.f;
    }
    return self;
}

@end
