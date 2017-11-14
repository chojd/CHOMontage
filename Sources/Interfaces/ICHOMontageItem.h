//
//  ICHOMontageItem.h
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHOMontageDefines.h"

@protocol ICHOMontageLayout;
@protocol ICHOMontageItem <NSObject>

@property (nonatomic, strong) NSString *itemID;
@property (nonatomic, assign) CHOMontageID montageID;
@property (nonatomic, strong) id<ICHOMontageLayout>layout;

@end
