//
// Created by Gilles Guillemin on 04/12/14.
// Copyright (c) 2014 FlexStuff. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIEdgeInsetsTestClass : NSObject
- (instancetype)initWithSomeCGSize:(CGSize)someCGSize someCGFloat:(CGFloat)someCGFloat anotherCGSize:(CGSize)anotherCGSize anotherCGFloat:(CGFloat)anotherCGFloat edgeInsets:(UIEdgeInsets)edgeInsets;

- (instancetype)initWithSomeCGSize:(CGSize)someCGSize someCGFloat:(CGFloat)someCGFloat anotherCGSize:(CGSize)anotherCGSize edgeInsets:(UIEdgeInsets)edgeInsets anotherCGFloat:(CGFloat)anotherCGFloat;

- (instancetype)initWithSomeCGSize:(CGSize)someCGSize someCGFloat:(CGFloat)someCGFloat edgeInsets:(UIEdgeInsets)edgeInsets anotherCGSize:(CGSize)anotherCGSize anotherCGFloat:(CGFloat)anotherCGFloat;
@end