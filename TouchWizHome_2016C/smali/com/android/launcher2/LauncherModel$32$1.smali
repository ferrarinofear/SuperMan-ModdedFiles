.class Lcom/android/launcher2/LauncherModel$32$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$32;

.field final synthetic val$hotseat:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$32;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$32$1;->this$1:Lcom/android/launcher2/LauncherModel$32;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$32$1;->val$hotseat:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$32$1;->this$1:Lcom/android/launcher2/LauncherModel$32;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$32;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$32$1;->this$1:Lcom/android/launcher2/LauncherModel$32;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$32;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$32$1;->val$hotseat:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHotseatItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method
