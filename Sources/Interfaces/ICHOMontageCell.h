//
//  ICHOMontageCell.h
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ICHOMontageItem, ICHOMontageLayout;
@protocol ICHOMontageCell <NSObject>

@property (nonatomic, weak, readonly) id<ICHOMontageItem>item;

+ (BOOL)figure:(id<ICHOMontageLayout>)layout forItem:(id<ICHOMontageItem>)item;
- (BOOL)reloadWithMontageItem:(id<ICHOMontageItem>)item;

@end
