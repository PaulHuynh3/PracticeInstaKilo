//
//  DetailViewController.m
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-16.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *PictureName;
@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];

}


-(void)configureView{
    
    //configure cell before view loads.
    self.PictureName.text = self.photoObject.photoName;
    self.detailImageView.image = self.photoObject.photo;
    
    
}





@end
