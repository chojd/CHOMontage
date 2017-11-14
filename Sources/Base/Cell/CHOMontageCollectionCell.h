//
//  CHOMontageCollectionCell.h
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ICHOMontageCell.h"
#import "CHOMontageAnnotation.h"

@interface CHOMontageCollectionCell : UICollectionViewCell <ICHOMontageCell>

@property (nonatomic, weak, readonly) id<ICHOMontageItem>item;

- (BOOL)reloadWithMontageItem:(id<ICHOMontageItem>)item;
+ (BOOL)figure:(id<ICHOMontageLayout>)layout forItem:(id<ICHOMontageItem>)item;

@end
