//
//  MasterViewController.m
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-15.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "MasterViewController.h"
#import "PictureHandler.h" //note when we import picturehandler.h we have access to picturecategory.h and pictureobject.h (they were created in the initializer of picturehandler)

@interface MasterViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic)PictureHandler *pictureHandler;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
}



//- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
//
//
//}



@end
