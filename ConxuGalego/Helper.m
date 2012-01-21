//
//  Helper.m
//  ConxuGalego
//
//  Created by Xurxo Méndez Pérez on 21/01/12.
//  Copyright (c) 2012 ninguna. All rights reserved.
//

#import "Helper.h"

@implementation Helper

static UIAlertView * loadingAlert;

+(NSURL *) getUrl:(NSString *)term
{
    NSMutableString *urlString = [NSMutableString string];
    [urlString appendString:@"http://sonxurxo.com/conxuga/conshuga.pl?"];
    [urlString appendString:term];
    return [NSURL URLWithString:urlString];
}

+(void)showAlert
{
    loadingAlert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Conxugando verbo...", nil) 
                                              message:nil delegate:self cancelButtonTitle:nil otherButtonTitles: nil];
    [loadingAlert show];
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    
    indicator.center = CGPointMake(loadingAlert.bounds.size.width / 2, loadingAlert.bounds.size.height - 50);
    [indicator startAnimating];
    [loadingAlert addSubview:indicator];
}

+(void)dismissAlert
{
    [loadingAlert dismissWithClickedButtonIndex:0 animated:YES];
}

@end