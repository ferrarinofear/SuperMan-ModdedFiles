.class Lcom/android/incallui/UiAdapter$1;
.super Landroid/os/Handler;
.source "UiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/UiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/UiAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/UiAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/UiAdapter;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/incallui/UiAdapter$1;->this$0:Lcom/android/incallui/UiAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 53
    const-string v1, "UiAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/UiAdapter$1;->this$0:Lcom/android/incallui/UiAdapter;

    invoke-virtual {v1, v4, v4}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    .line 57
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/incallui/UiAdapter$1;->this$0:Lcom/android/incallui/UiAdapter;

    const-string v2, "NONE"

    invoke-virtual {v1, v4, v2, v4}, Lcom/android/incallui/UiAdapter;->showConferenceStateMessage(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 64
    .local v0, "str":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/incallui/UiAdapter$1;->this$0:Lcom/android/incallui/UiAdapter;

    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/UiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method