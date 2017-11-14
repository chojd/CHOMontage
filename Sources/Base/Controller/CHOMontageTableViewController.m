//
//  CHOMontageTableViewController.m
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOMontageTableViewController.h"

#import "CHOTableDirector.h"

@interface CHOMontageTableViewController ()

@property (nonatomic, strong, readwrite) NSMutableOrderedSet <ICHOMontageItem>*dataSource;

@end

@implementation CHOMontageTableViewController

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
    self.dataSource = [[NSMutableOrderedSet alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - TableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id<ICHOMontageItem>item = [self.dataSource objectAtIndex:indexPath.row];
    Class cellClass = [[CHOTableDirector sharedDirector] cellClassForMontageID:[item montageID]];
    
    [tableView registerClass:cellClass forCellReuseIdentifier:NSStringFromClass(cellClass)];
    UITableViewCell <ICHOMontageCell>*cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(cellClass)
                                                                             forIndexPath:indexPath];
    [cell reloadWithMontageItem:item];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    id<ICHOMontageItem>item = [self.dataSource objectAtIndex:indexPath.row];
    return [[item layout] height];
}

@end
