//
//  CHOGoodsItem.m
//  CHOMontage_Example
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOGoodsItem.h"

@implementation CHOGoodsItem

CHO_MONTAGE_TABLE_ITEM_ANNOTATION(CHOMontageGoodsID)

- (instancetype)init {
    self = [super init];
    if (self) {
        self.montageID = CHOMontageGoodsID;
    }
    return self;
}

@end
