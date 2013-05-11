//
//  FullScreenImageViewController.m
//  TestImageView
//
//  Created by Devang Mundhra on 5/11/13.
//  Copyright (c) 2013 Devang Mundhra. All rights reserved.
//

#import "FullScreenImageViewController.h"
#import "SDWebImage/UIImageView+WebCache.h"

@interface FullScreenImageViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation FullScreenImageViewController

@synthesize imageView = _imageView;
@synthesize imageURL = _imageURL;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self.imageView setImageWithURL:self.imageURL placeholderImage:nil options:SDWebImageProgressiveDownload
                           progress:^(NSUInteger receivedSize, long long expectedSize) {
                               NSLog(@"Progressed full screen %d of %llu", receivedSize, expectedSize);
                           }
                          completed:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
