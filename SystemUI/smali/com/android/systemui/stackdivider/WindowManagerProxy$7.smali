.class Lcom/android/systemui/stackdivider/WindowManagerProxy$7;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get7(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get9(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get13(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get12(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get11(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->setSnapView(ZLandroid/graphics/Rect;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
