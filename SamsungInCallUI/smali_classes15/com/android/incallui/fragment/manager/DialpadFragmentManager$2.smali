.class Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DialpadFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/manager/DialpadFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 254
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.intent.action.ACTION_DTMF_BUSY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    # getter for: Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->access$100(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v2, v2, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 258
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v2, v2, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 260
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    .line 261
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v2, v2, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 262
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    # invokes: Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->deleteSendDtmfPopDelayed()V
    invoke-static {v2}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->access$200(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V

    .line 265
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method