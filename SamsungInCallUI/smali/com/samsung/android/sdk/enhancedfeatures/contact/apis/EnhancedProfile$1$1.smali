.class Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V
    .locals 2

    const-string v0, "onReceive Contact Push syncLocalContacts Errors"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;)V
    .locals 2

    const-string v0, "onReceive Contact Push syncLocalContacts success"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
