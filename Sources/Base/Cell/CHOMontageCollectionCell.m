//
//  CHOMontageCollectionCell.m
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOMontageCollectionCell.h"

@interface CHOMontageCollectionCell ()

@property (nonatomic, weak, readwrite) id<ICHOMontageItem>item;

@end

@implementation CHOMontageCollectionCell

+ (BOOL)figure:(id<ICHOMontageLayout>)layout forItem:(id<ICHOMontageItem>)item {
    return YES;
}

- (BOOL)reloadWithMontageItem:(id<ICHOMontageItem>)item {
    self.item = item;
    return YES;
}

@end
