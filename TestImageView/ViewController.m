//
//  ViewController.m
//  TestImageView
//
//  Created by Devang Mundhra on 5/9/13.
//  Copyright (c) 2013 Devang Mundhra. All rights reserved.
//

#import "ViewController.h"
#import "SDWebImage/UIImageView+WebCache.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

@synthesize imageView = _imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.imageView.backgroundColor = [UIColor blackColor];
    
	// Do any additional setup after loading the view, typically from a nib.

    [self.imageView setImageWithURL:[NSURL URLWithString:@"http://files.parse.com/ec0335d6-135b-418a-a5d0-3f697be04c70/3fba291b-f680-4be8-9680-180ff2be227e-file"] placeholderImage:nil options:SDWebImageProgressiveDownload
                            progress:^(NSUInteger receivedSize, long long expectedSize) {
                                NSLog(@"Progressed %d of %llu", receivedSize, expectedSize);
                            }
                           completed:nil];
}
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"FullScreen"]) {
        [segue.destinationViewController performSelector:@selector(setImageURL:) withObject:[NSURL URLWithString:@"http://files.parse.com/ec0335d6-135b-418a-a5d0-3f697be04c70/3fba291b-f680-4be8-9680-180ff2be227e-file"]];
    }
}

- (void)viewDidUnload
{
    [self setImageView:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
