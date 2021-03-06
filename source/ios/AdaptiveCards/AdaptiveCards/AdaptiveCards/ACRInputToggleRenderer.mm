//
//  ACRInputToggleRenderer
//  ACRInputToggleRenderer.mm
//
//  Copyright © 2017 Microsoft. All rights reserved.
//

#import "ACRInputToggleRenderer.h"
#import "ACRInputTableView.h"
#import "ACRToggleInputDataSource.h"
#import "ACRContentHoldingUIView.h"
#import "ACRSeparator.h"
#import "ToggleInput.h"
#import "ACRColumnSetView.h"

@implementation ACRInputToggleRenderer

+ (ACRInputToggleRenderer *)getInstance
{
    static ACRInputToggleRenderer *singletonInstance = [[self alloc] init];
    return singletonInstance;
}

+ (CardElementType)elemType
{
    return CardElementType::ToggleInput;
}

- (UIView *)render:(UIView *)viewGroup
rootViewController:(UIViewController *)vc
            inputs:(NSMutableArray *)inputs
      withCardElem:(std::shared_ptr<BaseCardElement> const &)elem
     andHostConfig:(std::shared_ptr<HostConfig> const &)config
{
    std::shared_ptr<ToggleInput> toggleBlck = std::dynamic_pointer_cast<ToggleInput>(elem);

    ACRInputTableView *inputView = [[ACRInputTableView alloc] initWithSuperview:viewGroup];
    ACRToggleInputDataSource *dataSource = [[ACRToggleInputDataSource alloc] initWithInputToggle:toggleBlck WithHostConfig:config];
    [inputs addObject:dataSource];
    inputView.dataSource = dataSource;
    inputView.delegate = (NSObject<UITableViewDelegate> *)dataSource;

    if(viewGroup)
    {
        [(UIStackView *)viewGroup addArrangedSubview:inputView];
    }
    [inputView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"tabCellId"];
    [viewGroup addConstraint:
     [NSLayoutConstraint constraintWithItem:inputView
                                  attribute:NSLayoutAttributeLeading
                                  relatedBy:NSLayoutRelationLessThanOrEqual
                                     toItem:viewGroup
                                  attribute:NSLayoutAttributeLeading
                                 multiplier:1.0
                                   constant:0]];
    [viewGroup addConstraint:
     [NSLayoutConstraint constraintWithItem:inputView
                                  attribute:NSLayoutAttributeTrailing
                                  relatedBy:NSLayoutRelationLessThanOrEqual
                                     toItem:viewGroup
                                  attribute:NSLayoutAttributeTrailing
                                 multiplier:1.0
                                   constant:0]];
    return inputView;
}

@end
