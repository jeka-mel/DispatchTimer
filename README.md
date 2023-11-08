# DispatchTimer

Mimics the API of DispatchSourceTimer but in a way that prevents crashes that occur from calling `resume` multiple times on a timer that is already resumed 
(noted by https://github.com/SiftScience/sift-ios/issues/52)
