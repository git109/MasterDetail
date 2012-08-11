//
//  Scene1BViewController.m
//  MasterDetail


#import "Scene1BViewController.h"
#import "Scene1AViewController.h"
#import "Scene1CViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"


@interface Scene1BViewController ()

@end

@implementation Scene1BViewController

- (void)tapped:(UITapGestureRecognizer *)recognizer
{
    Scene1CViewController *scene1CViewController = [[Scene1CViewController alloc] initWithNibName:@"Scene1CViewController" bundle:nil];
    [self.splitViewController swapDetailViewControllerWith:scene1CViewController];
}

- (void)doubleTapped: (UITapGestureRecognizer *)recognizer
{
    Scene1AViewController *scene1AViewController = [[Scene1AViewController alloc] initWithNibName:@"Scene1AViewController" bundle:nil];
    [self.splitViewController swapDetailViewControllerWith:scene1AViewController];
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
