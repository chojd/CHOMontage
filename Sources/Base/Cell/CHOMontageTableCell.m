//
//  CHOMontageTableCell.m
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOMontageTableCell.h"

@interface CHOMontageTableCell ()

@property (nonatomic, weak, readwrite) id<ICHOMontageItem>item;

@end

@implementation CHOMontageTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

+ (BOOL)figure:(id<ICHOMontageLayout>)layout forItem:(id<ICHOMontageItem>)item {
    return YES;
}

- (BOOL)reloadWithMontageItem:(id<ICHOMontageItem>)item {
    self.item = item;
    return YES;
}

@end
