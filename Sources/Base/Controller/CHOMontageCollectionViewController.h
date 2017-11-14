//
//  CHOMontageCollectionViewController.h
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICHOMontageItem.h"

@interface CHOMontageCollectionViewController : UICollectionViewController

@property (nonatomic, strong, readonly) NSMutableOrderedSet <ICHOMontageItem>*dataSource;

@end
