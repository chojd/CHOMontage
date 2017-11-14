//
//  CHOMontageAnnotation.h
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHOMontageDefines.h"

#define CHO_MONTAGE_TABLE_ITEM_ANNOTATION(CHOMontageID)                                 \
+ (void)load {                                                                          \
[[CHOMontageAnnotation sharedAnnotation] registerTableItem:self montageID:CHOMontageID];\
}

#define CHO_MONTAGE_TABLE_LAYOUT_ANNOTATION(CHOMontageID)                                   \
+ (void)load {                                                                              \
[[CHOMontageAnnotation sharedAnnotation] registerTableLayout:self montageID:CHOMontageID];  \
}

#define CHO_MONTAGE_COLLECTION_ITEM_ANNOTATION(CHOMontageID)                                    \
+ (void)load {                                                                                  \
[[CHOMontageAnnotation sharedAnnotation] registerCollectionItem:self montageID:CHOMontageID];   \
}

#define CHO_MONTAGE_COLLECTION_LAYOUT_ANNOTATION(CHOMontageID)                                  \
+ (void)load {                                                                                  \
[[CHOMontageAnnotation sharedAnnotation] registerCollectionLayout:self montageID:CHOMontageID]; \
}

#define CHO_MONTAGE_CELL_ANNOTATION(CHOMontageID)                                   \
+ (void)load {                                                                      \
[[CHOMontageAnnotation sharedAnnotation] registerCell:self montageID:CHOMontageID]; \
}

@interface CHOMontageAnnotation : NSObject

+ (instancetype)sharedAnnotation;

- (BOOL)registerCell:(Class)aClass montageID:(CHOMontageID)montageID;

- (BOOL)registerTableItem:(Class)aClass montageID:(CHOMontageID)montageID;
- (BOOL)registerTableLayout:(Class)aClass montageID:(CHOMontageID)montageID;

- (BOOL)registerCollectionItem:(Class)aClass montageID:(CHOMontageID)montageID;
- (BOOL)registerCollectionLayout:(Class)aClass montageID:(CHOMontageID)montageID;

@end
