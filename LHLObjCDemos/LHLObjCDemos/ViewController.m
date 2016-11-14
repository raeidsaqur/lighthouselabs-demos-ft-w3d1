//
//  ViewController.m
//  LHLObjCDemos
//
//  Created by Raeid Saqur on 2016-11-03.
//  Copyright © 2016 Finatechal. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Extension.h"
#import "UIView+Extensions.h"
#import "UIView_Extension.h"

//E.g. of this class's Extension:
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *blogPicImageView;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super viewDidLoad];
    [self demoUIImageExtension];
    [self demoExtensionMethodInvocation];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButtonPressed:(id)sender {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    //[self demoClassMethodInvocation];
    [self demoInstanceMethodInvocation];
}

#pragma mark - Demo Methods

- (void)demoUIImageExtension {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    UIImage *blogPic = [UIImage imageNamed:@"BlogPic"];
    
    blogPic = [UIImage convertImageToGrayScale:blogPic];
    
    [self.blogPicImageView setImage:blogPic];
}

- (void)demoClassMethodInvocation {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    //E.g. of a class method invocation:
    [UIView shakeItAnimation:self.passwordTextField];
}

- (void)demoInstanceMethodInvocation {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    //E.g. of a instance method invocation:
    [self.passwordTextField circle];
}

- (void)demoExtensionMethodInvocation {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [UIView anExtensionMethodDeclaration];
}


@end
