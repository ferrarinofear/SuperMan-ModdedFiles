.class public Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;
.super Landroid/widget/FrameLayout;
.source "FingerScanWarningEffect.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "FingerScanWarningEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private disableWarnView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->cancelAnimation()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "FingerScanWarningEffect : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$string;->version:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setWarnView(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;II)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->disableWarnView()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->startAnimation()V

    return-void
.end method


# virtual methods
.method public setWarningStatus(I)V
    .locals 7

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWarningStatus : status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_warning_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_warning_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->disableWarnView()V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    instance-of v4, v4, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    if-nez v4, :cond_0

    new-instance v2, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->register_alert_vertical_gap:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->alert_bracket:I

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->alert_fingerprint:I

    invoke-virtual {v2, v4, v5, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setImageResources(III)V

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarnView(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;II)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    instance-of v4, v4, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4, v3, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarnView(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;II)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    instance-of v4, v4, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4, v3, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarnView(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;II)V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->mWarnView:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    instance-of v4, v4, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4, v3, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarnView(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
