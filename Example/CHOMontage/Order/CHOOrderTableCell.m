//
//  CHOOrderTableCell.m
//  CHOMontage_Example
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOOrderTableCell.h"

#import "CHOOrderItem.h"

@implementation CHOOrderTableCell

CHO_MONTAGE_CELL_ANNOTATION(CHOMontageOrderID)

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (BOOL)reloadWithMontageItem:(CHOOrderItem *)item {
    if ([super reloadWithMontageItem:item] == NO) {
        return NO;
    }
    self.textLabel.backgroundColor = [UIColor orangeColor];
    self.textLabel.text = [NSString stringWithFormat:@"%@%@", NSStringFromClass([self class]), [item orderID]];
    
    return YES;
}

@end
