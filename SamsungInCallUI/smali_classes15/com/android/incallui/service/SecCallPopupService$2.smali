.class Lcom/android/incallui/service/SecCallPopupService$2;
.super Landroid/database/ContentObserver;
.source "SecCallPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/SecCallPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/service/SecCallPopupService;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupService$2;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 223
    const-string v0, "NTT DOCOMO : onChange "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$2;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    .line 225
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$2;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;
    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$2;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService$2;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v2, v2, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 226
    return-void
.end method