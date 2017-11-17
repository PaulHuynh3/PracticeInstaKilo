//
//  MasterViewController.m
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-15.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "MasterViewController.h"
#import "PictureHandler.h" //note when we import picturehandler.h we have access to picturecategory.h and pictureobject.h (they were created in the initializer of picturehandler)
#import "PictureViewCell.h"
#import "PictureCategory.h"
#import "SectionReusableView.h"



@interface MasterViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic)PictureHandler *pictureHandler;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pictureHandler = [[PictureHandler alloc]init];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return self.pictureHandler.categories.count;
    
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    SectionReusableView * sectionCell = [[SectionReusableView alloc]init];
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]){
        
        sectionCell = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"sectionIdentifier" forIndexPath:indexPath];
        
        PictureCategory* category = self.pictureHandler.categories[indexPath.section];
        
        //pass category object to section cell and set it.
        [sectionCell setPictureCategory:category];
        
    }
  
    return sectionCell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.pictureHandler.categories[section].pictures.count;
    
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    PictureViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    PictureObject *photoObject = self.pictureHandler.categories[indexPath.section].pictures[indexPath.row];
    
    //pass the entire photoobject to pictureviewcell and inside the cell i can choose to set different properties of the object(the image, the name etc).
    [cell setPhotoObject:photoObject];

    return cell;
    
}



@end
