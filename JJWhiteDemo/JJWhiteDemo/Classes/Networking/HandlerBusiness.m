
#import "HandlerBusiness.h"
#import "YYModel.h"
#import "sys/utsname.h"

//static NSString *kBaseURLString = @"http://192.168.2.7";
static NSString *kBaseURLString = @"http://app.51jiaojiao.com";
@implementation HandlerBusiness

+(void)JJPostServiceWithApicode:(NSString*)apicode Parameters:(NSDictionary*)parameters Success:(ApiSuccessBlock)success Failed:(ApiFailedBlock)failed Complete:(ApiCompleteBlock)complete
{
    [BaseHandlerBusiness PostServiceWithBaseUrl:kBaseURLString Apicode:apicode Parameters:parameters Success:success Failed:failed Complete:complete];
}

+(void)JJGetServiceWithApicode:(NSString*)apicode Parameters:(NSDictionary*)parameters Success:(ApiSuccessBlock)success Failed:(ApiFailedBlock)failed Complete:(ApiCompleteBlock)complete {
    [BaseHandlerBusiness GetServiceWithBaseUrl:kBaseURLString Apicode:apicode Parameters:parameters Success:success Failed:failed Complete:complete];
}

@end