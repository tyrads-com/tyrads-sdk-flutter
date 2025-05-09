#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(TyradsSdk, NSObject)

RCT_EXTERN_METHOD(init:(NSString *)apiKey secretKey:(NSString *)secretKey)
// RCT_EXTERN_METHOD(loginUser:(NSString *)userId)
RCT_EXTERN_METHOD(loginUser:(NSString *)userId
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(showOffers:(NSInteger)launchMode
                  route:(NSString)route
                  campaignID:(NSInteger)campaignID)

@end
