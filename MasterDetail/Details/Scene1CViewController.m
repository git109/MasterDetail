//
//  Scene1CViewController.m
//  MasterDetail


#import "Scene1CViewController.h"
#import "Scene1BViewController.h"
#import "Scene1DViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"


@interface Scene1CViewController ()

@end

@implementation Scene1CViewController

- (void)tapped:(UITapGestureRecognizer *)recognizer
{
    Scene1DViewController *scene1DViewController = [[Scene1DViewController alloc] initWithNibName:@"Scene1DViewController" bundle:nil];
    [self.splitViewController swapDetailViewControllerWith:scene1DViewController];
}

- (void)doubleTapped: (UITapGestureRecognizer *)recognizer
{
    Scene1BViewController *scene1BViewController = [[Scene1BViewController alloc] initWithNibName:@"Scene1BViewController" bundle:nil];
    [self.splitViewController swapDetailViewControllerWith:scene1BViewController];
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
    UITapGestureRecognizer *singleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTapped:)];
    doubleTapRecognizer.numberOfTouchesRequired = 2;
    [self.view addGestureRecognizer:doubleTapRecognizer];
    [self.view addGestureRecognizer:singleTapRecognizer];
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
