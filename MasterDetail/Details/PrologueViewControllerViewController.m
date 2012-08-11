//
//  PrologueViewControllerViewController.m
//  MasterDetail


#import "PrologueViewControllerViewController.h"
#import "Scene1AViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"
@interface PrologueViewControllerViewController ()

@end

@implementation PrologueViewControllerViewController

- (void)tapped: (UITapGestureRecognizer *)recognizer
{
    Scene1AViewController *scene1AViewController = [[Scene1AViewController alloc] initWithNibName:@"Scene1AViewController" bundle:nil];
    [self.splitViewController swapDetailViewControllerWith:scene1AViewController];    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Prologue", @"Prologue");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *singleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    [self.view addGestureRecognizer:singleTapRecognizer];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


@end
