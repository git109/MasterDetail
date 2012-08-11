//
//  Scene1DViewController.m
//  MasterDetail


#import "Scene1DViewController.h"
#import "Scene1CViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"

@interface Scene1DViewController ()

@end

@implementation Scene1DViewController

- (void)doubleTapped: (UITapGestureRecognizer *)recognizer
{
    Scene1CViewController *scene1CViewController = [[Scene1CViewController alloc] initWithNibName:@"Scene1CViewController" bundle:nil];
    [self.splitViewController swapDetailViewControllerWith:scene1CViewController];
}


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
    UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTapped:)];
    doubleTapRecognizer.numberOfTouchesRequired = 2;
    [self.view addGestureRecognizer:doubleTapRecognizer];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
