//
//  DetailViewController.m
//  MasterDetail


#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize detailDescriptionLabel = _detailDescriptionLabel;


#pragma mark - Managing the detail item


- (void)viewDidUnload
{
    [super viewDidUnload];

    self.detailDescriptionLabel = nil;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}

@end
