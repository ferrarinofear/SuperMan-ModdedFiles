.class Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;
.super Landroid/os/Handler;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v5, "packageName"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "info"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const-string/jumbo v5, "response"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingResponseCallback;

    iget-object v7, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    iget-object v7, v7, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->this$0:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-direct {v6, v7, v4}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingResponseCallback;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Landroid/os/IBinder;)V

    invoke-interface {v5, v3, v0, v6}, Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;->onEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingResponseCallback;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;->onEdgeLightingCanceled(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
