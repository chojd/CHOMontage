//
//  CHOMontageCollectionViewController.m
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOMontageCollectionViewController.h"

#import "CHOCollectionDirector.h"

@interface CHOMontageCollectionViewController ()

@property (nonatomic, strong, readwrite) NSMutableOrderedSet <ICHOMontageItem>*dataSource;

@end

@implementation CHOMontageCollectionViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        [self commonInitialization];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self commonInitialization];
}

- (void)commonInitialization {
    self.dataSource = [NSMutableOrderedSet orderedSet];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    id<ICHOMontageItem>item = [self.dataSource objectAtIndex:indexPath.row];
    Class cellClass = [[CHOCollectionDirector sharedDirector] cellClassForMontageID:[item montageID]];
    [collectionView registerClass:cellClass forCellWithReuseIdentifier:NSStringFromClass(cellClass)];
    UICollectionViewCell <ICHOMontageCell>*cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass(cellClass)
                                                                                            forIndexPath:indexPath];
    [cell reloadWithMontageItem:item];
    return cell;
}

@end
