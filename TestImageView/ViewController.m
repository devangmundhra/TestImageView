//
//  ViewController.m
//  TestImageView
//
//  Created by Devang Mundhra on 5/9/13.
//  Copyright (c) 2013 Devang Mundhra. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "UIImageView+AFNetworking.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@end

@implementation ViewController

@synthesize imageView1 = _imageView1;
@synthesize imageView2 = _imageView2;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.imageView1 setImageWithURL:[NSURL URLWithString:@"http://files.parse.com/ec0335d6-135b-418a-a5d0-3f697be04c70/3fba291b-f680-4be8-9680-180ff2be227e-file"] placeholderImage:nil];
    [self.imageView2 setImageWithURL:[NSURL URLWithString:@"http://3.bp.blogspot.com/-AEuckzpxKs8/TZYrUXqHKBI/AAAAAAAAB6o/3Cbuw1h1pPI/s1600/Sailboats_at_sunset_art_wallpaper.jpg"] placeholderImage:nil];
}

- (void)viewDidUnload
{
    [self setImageView1:nil];
    [self setImageView2:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
