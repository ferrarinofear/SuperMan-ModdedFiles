.class Lcom/android/keyguard/KeyguardAccountView$5;
.super Landroid/os/CountDownTimer;
.source "KeyguardAccountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field attempt:I

.field attemptRemainingBeforeWipe:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;JJ)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get2(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->attemptRemainingBeforeWipe:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get2(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->attempt:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get5(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get4(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get12(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->-get7(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-int v1, v4

    div-int/lit8 v0, v1, 0x3c

    const-string/jumbo v2, ""

    iget v3, p0, Lcom/android/keyguard/KeyguardAccountView$5;->attemptRemainingBeforeWipe:I

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardAccountView;->-get2(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardAccountView$5;->attempt:I

    iget v6, p0, Lcom/android/keyguard/KeyguardAccountView$5;->attemptRemainingBeforeWipe:I

    invoke-virtual {v4, v5, v6}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/16 v3, 0x3c

    if-le v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardAccountView;->-get2(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_attempts_countdown_min:I

    add-int/lit8 v6, v0, 0x1

    new-array v7, v10, [Ljava/lang/Object;

    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardAccountView;->-get12(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v3

    invoke-interface {v3, v2, v10}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView$5;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardAccountView;->-get2(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$plurals;->kg_too_many_failed_attempts_countdown_sec:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
