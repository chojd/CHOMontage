//
//  CHOGoodsLayout.m
//  CHOMontage_Example
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOGoodsLayout.h"

@implementation CHOGoodsLayout

CHO_MONTAGE_TABLE_LAYOUT_ANNOTATION(CHOMontageGoodsID)

- (instancetype)init {
    self = [super init];
    if (self) {
        self.height = 66.f;
    }
    return self;
}

@end
