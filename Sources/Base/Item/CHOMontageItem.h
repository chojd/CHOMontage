//
//  CHOMontageItem.h
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ICHOMontageItem.h"
#import "CHOMontageDefines.h"
#import "CHOMontageAnnotation.h"

@interface CHOMontageItem : NSObject <ICHOMontageItem>

@property (nonatomic, strong) NSString *itemID;
@property (nonatomic, assign) CHOMontageID montageID;
@property (nonatomic, strong) id<ICHOMontageLayout>layout;

@end
