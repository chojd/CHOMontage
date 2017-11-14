//
//  CHOOrderItem.m
//  CHOMontage_Example
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOOrderItem.h"

@implementation CHOOrderItem

CHO_MONTAGE_TABLE_ITEM_ANNOTATION(CHOMontageOrderID)

- (instancetype)init {
    self = [super init];
    if (self) {
        self.montageID = CHOMontageOrderID;
    }
    return self;
}

@end
