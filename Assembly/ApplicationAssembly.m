//
// Created by Gilles Guillemin on 04/12/14.
// Copyright (c) 2014 FlexStuff. All rights reserved.
//

#import "ApplicationAssembly.h"
#import "AppDelegate.h"
#import "UIEdgeInsetsTestClass.h"


@implementation ApplicationAssembly {
    NSDictionary *sizes;
    NSDictionary *edgeInsets;
    NSDictionary *floats;
};

- (instancetype)init {
    self = [super init];
    if (self) {
        sizes = @{@"value1" : [NSValue valueWithCGSize:CGSizeMake(300, 79)]};
        edgeInsets = @{@"value1" : [NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(30, 40, 30, 40)]};
        floats = @{@"value1" : @20.0};
    }

    return self;
}


- (AppDelegate *)appDelegate {
    return [TyphoonDefinition withClass:[AppDelegate class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(uiEdgeInsetsTestClass1) with:[self uIEdgeInsetsTestClass1]];
        [definition injectProperty:@selector(uiEdgeInsetsTestClass2) with:[self uIEdgeInsetsTestClass2]];
        [definition injectProperty:@selector(uiEdgeInsetsTestClass3) with:[self uIEdgeInsetsTestClass3]];
    }];
}

- (UIEdgeInsetsTestClass *)uIEdgeInsetsTestClass1 {

    return [TyphoonDefinition withClass:[UIEdgeInsetsTestClass class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithSomeCGSize:someCGFloat:anotherCGSize:anotherCGFloat:edgeInsets:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:sizes[@"value1"]];
            [initializer injectParameterWith:floats[@"value1"]];
            [initializer injectParameterWith:[NSValue valueWithCGSize:(CGSizeMake(0, 0))]];
            [initializer injectParameterWith:floats[@"value1"]];
            [initializer injectParameterWith:edgeInsets[@"value1"]];
        }];
        definition.scope = TyphoonScopePrototype;
    }];
}

- (UIEdgeInsetsTestClass *)uIEdgeInsetsTestClass2 {
    return [TyphoonDefinition withClass:[UIEdgeInsetsTestClass class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithSomeCGSize:someCGFloat:anotherCGSize:edgeInsets:anotherCGFloat:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:sizes[@"value1"]];
            [initializer injectParameterWith:floats[@"value1"]];
            [initializer injectParameterWith:[NSValue valueWithCGSize:(CGSizeMake(0, 0))]];
            [initializer injectParameterWith:edgeInsets[@"value1"]];
            [initializer injectParameterWith:floats[@"value1"]];
        }];
        definition.scope = TyphoonScopePrototype;
    }];
}

- (UIEdgeInsetsTestClass *)uIEdgeInsetsTestClass3 {

    return [TyphoonDefinition withClass:[UIEdgeInsetsTestClass class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithSomeCGSize:someCGFloat:edgeInsets:anotherCGSize:anotherCGFloat:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:sizes[@"value1"]];
            [initializer injectParameterWith:floats[@"value1"]];
            [initializer injectParameterWith:edgeInsets[@"value1"]];
            [initializer injectParameterWith:[NSValue valueWithCGSize:(CGSizeMake(0, 0))]];
            [initializer injectParameterWith:floats[@"value1"]];
        }];
        definition.scope = TyphoonScopePrototype;
    }];
}
@end