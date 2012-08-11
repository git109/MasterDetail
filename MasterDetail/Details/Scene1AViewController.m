//
//  Scene1AViewController.m
//  MasterDetail


#import "Scene1AViewController.h"
#import "PrologueViewControllerViewController.h"
#import "Scene1BViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"

@interface Scene1AViewController ()

@end


@implementation Scene1AViewController

- (void)tapped:(UITapGestureRecognizer *)recognizer
{
    Scene1BViewController *scene1BViewController = [[Scene1BViewController alloc] initWithNibName:@"Scene1BViewController" bundle:nil];
    [self.splitViewController swapDetailViewControllerWith:scene1BViewController];
}

- (void)doubleTapped: (UITapGestureRecognizer *)recognizer
{
    PrologueViewControllerViewController *prologueViewController = [[PrologueViewControllerViewController alloc] initWithNibName:@"PrologueViewControllerViewController" bundle:nil];
    [self.splitViewController swapDetailViewControllerWith:prologueViewController];
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
