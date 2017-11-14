//
//  CHOBaseDirector.h
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHOMontageDefines.h"

#import "ICHOMontageCell.h"
#import "ICHOMontageItem.h"
#import "ICHOMontageLayout.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHOBaseDirector : NSObject

- (BOOL)registerItem:(Class)aClass montageID:(CHOMontageID)montageID;
- (Class)itemClassForMontageID:(CHOMontageID)montageID;

- (BOOL)registerCell:(Class)aClass montageID:(CHOMontageID)montageID;
- (Class)cellClassForMontageID:(CHOMontageID)montageID;

- (BOOL)registerLayout:(Class)aClass montageID:(CHOMontageID)montageID;
- (Class)layoutClassForMontageID:(CHOMontageID)montageID;

- (id<ICHOMontageLayout>)layoutForItem:(id<ICHOMontageItem>)item;

@end

NS_ASSUME_NONNULL_END
