.class Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;
.super Landroid/os/CountDownTimer;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap5(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-set1(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)I

    return-void
.end method

.method public onTick(J)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    div-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_0

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v2, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b08d0

    invoke-virtual {v2, v4, v3}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    :goto_0
    return-void

    :cond_0
    div-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_1

    if-le v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v2, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b08d1

    invoke-virtual {v2, v4, v3}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x3c

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v2, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    new-array v3, v4, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b08d2

    invoke-virtual {v2, v4, v3}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    goto :goto_0

    :cond_2
    div-int/lit8 v1, v0, 0x3c

    if-le v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v2, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    new-array v3, v4, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b08d3

    invoke-virtual {v2, v4, v3}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v2, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b08cf

    invoke-virtual {v2, v4, v3}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    goto :goto_0
.end method
