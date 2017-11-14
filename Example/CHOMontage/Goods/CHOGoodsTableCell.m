//
//  CHOGoodsTableCell.m
//  CHOMontage_Example
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOGoodsTableCell.h"
#import "CHOGoodsItem.h"

@implementation CHOGoodsTableCell

CHO_MONTAGE_CELL_ANNOTATION(CHOMontageGoodsID)

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (BOOL)reloadWithMontageItem:(CHOGoodsItem *)item {
    if ([super reloadWithMontageItem:item] == NO) {
        return NO;
    }
    
    self.textLabel.text = [NSString stringWithFormat:@"%@%@", NSStringFromClass([self class]), [item goodsID]];
    
    return YES;
}

@end
