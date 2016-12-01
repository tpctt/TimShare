
<h1>TimShare</h1>
<ul>
<li>TimShare 基于 timcore 做的 share 模块,方便分享 
简化分享的代码逻辑,这个使用的 sharesdk 作为拓展,只需要设置3方 sdk 的 key 和 一个 收到mob的 block 即可</li>
<li>因为 qq 的 sdk导致 pod lib lint 不通过,</li>

````objectivec
typedef void(^ShareResult)(BOOL sucess,NSString *msg);

@interface   AppDelegate(share)

-(void)initSharedSDK;

-(void)shareInfo:(NSString *)title content:(NSString *)content image:(id)image  url:(NSString *)url actionSheet:(UIView *)actionSheet onShareStateChanged:(ShareResult)shareStateChangedHandler;


@end

