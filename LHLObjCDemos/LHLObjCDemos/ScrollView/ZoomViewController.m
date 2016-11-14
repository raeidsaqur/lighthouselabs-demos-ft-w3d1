//
//  ZoomViewController.m
//  w3d1-class
//
//  Created by Ivan Cheung on 2016-11-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "ZoomViewController.h"

@interface ZoomViewController ()
    @property (weak, nonatomic) IBOutlet UIImageView *imageView;
    @property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation ZoomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.scrollView.minimumZoomScale = 0.5;
    self.scrollView.maximumZoomScale = 4.0;
    self.scrollView.zoomScale = 1.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(UIView*) viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

-(void) scrollViewDidZoom:(UIScrollView *)scrollView
{
    CGSize scrollViewSize = scrollView.bounds.size;
    
    //use FRAME!
    CGSize imageViewSize = self.imageView.frame.size;
    
    float verticalPadding = (scrollViewSize.height - imageViewSize.height)/2;
    float horizontalPadding = (scrollViewSize.width - imageViewSize.width)/2;
    
    scrollView.contentInset = UIEdgeInsetsMake(verticalPadding, horizontalPadding, verticalPadding, horizontalPadding);
}
@end
