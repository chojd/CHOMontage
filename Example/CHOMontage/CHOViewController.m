//
//  CHOViewController.m
//  CHOMontage
//
//  Created by chojd on 11/14/2017.
//  Copyright (c) 2017 chojd. All rights reserved.
//

#import "CHOViewController.h"

#import "CHOGoodsItem.h"
#import "CHOOrderItem.h"

#import <CHOMontage/CHOTableDirector.h>

@interface CHOViewController ()

@end

@implementation CHOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (int index = 0; index < 10; index++) {
        CHOMontageItem *item = nil;
        if (index % 2 == 0) {
            CHOGoodsItem *tempItem = [[CHOGoodsItem alloc] init];
            tempItem.goodsID = [NSString stringWithFormat:@"%d%d%d%d", index, index, index, index];
            item = tempItem;
        } else {
            CHOOrderItem *tempItem = [[CHOOrderItem alloc] init];
            tempItem.orderID = [NSString stringWithFormat:@"%d%d%d%d", index, index, index, index];
            item = tempItem;
        }

        id<ICHOMontageLayout>layout = [[CHOTableDirector sharedDirector] layoutForItem:item];
        item.layout = layout;
        [self.dataSource addObject:item];
    }
    
}

@end
