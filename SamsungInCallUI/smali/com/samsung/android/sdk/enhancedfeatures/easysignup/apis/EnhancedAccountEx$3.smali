.class final Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->getPreviousDeviceInfo(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$3;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$3;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx$3;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V

    :cond_0
    return-void
.end method
