//
// Created by Gilles Guillemin on 04/12/14.
// Copyright (c) 2014 FlexStuff. All rights reserved.
//

#import "UIEdgeInsetsTestClass.h"


@implementation UIEdgeInsetsTestClass

- (instancetype)initWithSomeCGSize:(CGSize)someCGSize
                       someCGFloat:(CGFloat)someCGFloat
                     anotherCGSize:(CGSize)anotherCGSize
                    anotherCGFloat:(CGFloat)anotherCGFloat
                        edgeInsets:(UIEdgeInsets)edgeInsets {
    self = [super self];
    if (self) {
        NSLog(@"Test1: initWithSomeCGSize:someCGFloat:anotherCGSize:anotherCGFloat:edgeInsets:");
        NSLog(@"someCGSize = %@", NSStringFromCGSize(someCGSize));
        NSLog(@"someCGFloat = %f", someCGFloat);
        NSLog(@"anotherCGSize =  %@", NSStringFromCGSize(anotherCGSize));
        NSLog(@"anotherCGFloat = %f", anotherCGFloat);
        NSLog(@"edgeInsets = %@", NSStringFromUIEdgeInsets(edgeInsets));
        NSLog(@"\n");
    }

    return self;
}

- (instancetype)initWithSomeCGSize:(CGSize)someCGSize
                       someCGFloat:(CGFloat)someCGFloat
                     anotherCGSize:(CGSize)anotherCGSize
                        edgeInsets:(UIEdgeInsets)edgeInsets
                    anotherCGFloat:(CGFloat)anotherCGFloat {
    self = [super self];
    if (self) {
        NSLog(@"Test2: initWithSomeCGSize:someCGFloat:anotherCGSize:edgeInsets:anotherCGFloat:");
        NSLog(@"someCGSize = %@", NSStringFromCGSize(someCGSize));
        NSLog(@"someCGFloat = %f", someCGFloat);
        NSLog(@"anotherCGSize =  %@", NSStringFromCGSize(anotherCGSize));
        NSLog(@"edgeInsets = %@", NSStringFromUIEdgeInsets(edgeInsets));
        NSLog(@"anotherCGFloat = %f", anotherCGFloat);
        NSLog(@"\n");
    }

    return self;
}

- (instancetype)initWithSomeCGSize:(CGSize)someCGSize someCGFloat:(CGFloat)someCGFloat edgeInsets:(UIEdgeInsets)edgeInsets anotherCGSize:(CGSize)anotherCGSize anotherCGFloat:(CGFloat)anotherCGFloat {
    self = [super self];
    if (self) {
        NSLog(@"Test3: initWithSomeCGSize:someCGFloat:edgeInsets:anotherCGSize:anotherCGFloat:");
        NSLog(@"someCGSize = %@", NSStringFromCGSize(someCGSize));
        NSLog(@"someCGFloat = %f", someCGFloat);
        NSLog(@"edgeInsets = %@", NSStringFromUIEdgeInsets(edgeInsets));
        NSLog(@"anotherCGSize =  %@", NSStringFromCGSize(anotherCGSize));
        NSLog(@"anotherCGFloat = %f", anotherCGFloat);
        NSLog(@"\n");
    }

    return self;
}


@end