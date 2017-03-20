.class public Lcom/android/incallui/service/HeadUpNotificationService;
.super Landroid/app/Service;
.source "HeadUpNotificationService.java"


# static fields
.field private static final DEFAULT_PANEL_ALPHA:F = 1.0f

.field private static final EXPAND_NOTIFICATIONS_PANEL_THRESHOLD:I = 0x100

.field private static final HORIZONTAL_FLING_THRESHOLD:I = 0x64

.field private static final LAUNCH_FULL_SCREEN_THRESHOLD:I = 0x40

.field protected static final LOG_TAG:Ljava/lang/String; = "HeadUpNotificationService"


# instance fields
.field protected mCanSlideOut:Z

.field protected mContext:Landroid/content/Context;

.field protected mDoLaunchFullScreen:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

.field protected mIsHideAnimationRunning:Z

.field protected mIsPopupShowing:Z

.field protected mIsShowAnimationRunning:Z

.field private mMinFlingVelocity:I

.field private mMoveAnimator:Landroid/animation/ObjectAnimator;

.field private mStartId:I

.field private mStartPointX:F

.field private mStartPointY:F

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private mViewPointX:I

.field private mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindow:Landroid/view/Window;

.field private mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mCanSlideOut:Z

    .line 91
    new-instance v0, Lcom/android/incallui/service/HeadUpNotificationService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/HeadUpNotificationService$1;-><init>(Lcom/android/incallui/service/HeadUpNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 168
    new-instance v0, Lcom/android/incallui/service/HeadUpNotificationService$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/HeadUpNotificationService$2;-><init>(Lcom/android/incallui/service/HeadUpNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/HeadUpNotificationService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mStartPointX:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/incallui/service/HeadUpNotificationService;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/incallui/service/HeadUpNotificationService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;
    .param p1, "x1"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mStartPointX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/incallui/service/HeadUpNotificationService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mStartId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/service/HeadUpNotificationService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mStartPointY:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/service/HeadUpNotificationService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;
    .param p1, "x1"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mStartPointY:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/service/HeadUpNotificationService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mViewPointX:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/service/HeadUpNotificationService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mViewPointX:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/service/HeadUpNotificationService;)Lcom/android/incallui/service/HeadUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/service/HeadUpNotificationService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/incallui/service/HeadUpNotificationService;->animateForSlideOut(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/app/SemStatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/service/HeadUpNotificationService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mMinFlingVelocity:I

    return v0
.end method

.method private animateForSlideOut(Z)V
    .locals 11
    .param p1, "toLeft"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 415
    iget-boolean v5, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mCanSlideOut:Z

    if-nez v5, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    if-eqz v5, :cond_0

    .line 418
    iput-boolean v9, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    .line 419
    const-string v5, "HeadUpNotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animateForSlideOut:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 421
    .local v3, "duration":I
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->getMaxX()I

    move-result v5

    int-to-float v5, v5

    neg-float v2, v5

    .line 422
    .local v2, "destination":F
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v9, [F

    aput v2, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 423
    .local v4, "moveAnimator":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 424
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 425
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 426
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 427
    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/service/HeadUpNotificationService$4;

    invoke-direct {v6, p0}, Lcom/android/incallui/service/HeadUpNotificationService$4;-><init>(Lcom/android/incallui/service/HeadUpNotificationService;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 421
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "destination":F
    .end local v4    # "moveAnimator":Landroid/animation/ObjectAnimator;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->getMaxX()I

    move-result v5

    int-to-float v2, v5

    goto :goto_1
.end method

.method private setDefaultPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 254
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowVoiceControlNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 256
    .local v0, "indicator":I
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 260
    .end local v0    # "indicator":I
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private showHeadUpNotification()V
    .locals 3

    .prologue
    .line 304
    const-string v0, "HeadUpNotificationService"

    const-string v1, "showHeadUpNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Lcom/android/incallui/service/HeadUpNotificationView;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/HeadUpNotificationView;-><init>(Lcom/android/incallui/service/HeadUpNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    .line 307
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    iget-object v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/HeadUpNotificationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/HeadUpNotificationView;->setAlpha(F)V

    .line 309
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 310
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/HeadUpNotificationService;->onCreateCustomView(Landroid/view/ViewGroup;)V

    .line 311
    invoke-direct {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->setDefaultPosition()V

    .line 313
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    .line 314
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    iget-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;

    .line 317
    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 446
    iget-boolean v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsPopupShowing:Z

    if-nez v2, :cond_1

    .line 447
    const-string v2, "HeadUpNotificationService"

    const-string v3, "animateForHide: popup is not shwoing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->stopSelf()V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    if-eqz v2, :cond_0

    .line 452
    iput-boolean v4, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    .line 453
    const-string v2, "HeadUpNotificationService"

    const-string v3, "animateForHide"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 455
    .local v0, "duration":I
    iget-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    invoke-virtual {v2}, Lcom/android/incallui/service/HeadUpNotificationView;->getHeight()I

    move-result v2

    int-to-float v1, v2

    .line 456
    .local v1, "height":F
    iget-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    const/4 v5, 0x0

    neg-float v6, v1

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    .line 457
    iget-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 458
    iget-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/service/HeadUpNotificationService$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/service/HeadUpNotificationService$5;-><init>(Lcom/android/incallui/service/HeadUpNotificationService;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 475
    iget-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateForHideNotStopSelf()V
    .locals 1

    .prologue
    .line 486
    new-instance v0, Lcom/android/incallui/service/HeadUpNotificationService$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/HeadUpNotificationService$6;-><init>(Lcom/android/incallui/service/HeadUpNotificationService;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/HeadUpNotificationService;->animateForHideNotStopSelf(Landroid/animation/AnimatorListenerAdapter;)V

    .line 493
    return-void
.end method

.method public animateForHideNotStopSelf(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 9
    .param p1, "callback"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 496
    iget-object v3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsPopupShowing:Z

    if-eqz v3, :cond_0

    .line 497
    iput-boolean v5, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    .line 498
    const-string v3, "HeadUpNotificationService"

    const-string v4, "animateForHide"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 500
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    invoke-virtual {v3}, Lcom/android/incallui/service/HeadUpNotificationView;->getHeight()I

    move-result v3

    int-to-float v1, v3

    .line 501
    .local v1, "height":F
    iget-object v3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    const/4 v6, 0x0

    neg-float v7, v1

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 502
    .local v2, "moveAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 506
    .end local v0    # "duration":I
    .end local v1    # "height":F
    .end local v2    # "moveAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method protected animateForShow()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 391
    iget-object v3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    if-eqz v3, :cond_0

    .line 392
    iput-boolean v5, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsShowAnimationRunning:Z

    .line 393
    const-string v3, "HeadUpNotificationService"

    const-string v4, "animateForShow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 395
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    invoke-virtual {v3}, Lcom/android/incallui/service/HeadUpNotificationView;->getHeight()I

    move-result v3

    int-to-float v1, v3

    .line 396
    .local v1, "height":F
    iget-object v3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    neg-float v4, v1

    invoke-virtual {v3, v4}, Lcom/android/incallui/service/HeadUpNotificationView;->setTranslationY(F)V

    .line 397
    iget-object v3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 398
    .local v2, "moveAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/service/HeadUpNotificationService$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/service/HeadUpNotificationService$3;-><init>(Lcom/android/incallui/service/HeadUpNotificationService;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 410
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 412
    .end local v0    # "duration":I
    .end local v1    # "height":F
    .end local v2    # "moveAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 358
    const/16 v2, 0x7de

    .line 360
    .local v2, "windowType":I
    const v0, 0x1800328

    .line 368
    .local v0, "layoutFlag":I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 370
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 371
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 372
    const/16 v3, 0x30

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 373
    const v3, 0x7f0b0011

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 376
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getMaxX()I
    .locals 3

    .prologue
    .line 384
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 385
    .local v0, "matrix":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/incallui/service/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 386
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 387
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method protected isHideAnimationRunning()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    return v0
.end method

.method protected isShowAnimationRunning()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsShowAnimationRunning:Z

    return v0
.end method

.method protected launchFullScreen()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelAnimation()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    const-string v0, "HeadUpNotificationService"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->removeHeadUpNotification()V

    .line 245
    invoke-direct {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->showHeadUpNotification()V

    .line 246
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->setHeadUpNotificationWindowFocusable()V

    .line 247
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 189
    const-string v1, "HeadUpNotificationService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 192
    iput-object p0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mContext:Landroid/content/Context;

    .line 193
    iget-object v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 194
    .local v0, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mMinFlingVelocity:I

    .line 195
    return-void
.end method

.method protected onCreateCustomView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 320
    return-void
.end method

.method protected onCustomCreate()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "HeadUpNotificationService"

    const-string v1, "onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->removeHeadUpNotification()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsPopupShowing:Z

    .line 236
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 237
    return-void
.end method

.method protected onEndAnimation()V
    .locals 0

    .prologue
    .line 480
    return-void
.end method

.method public onFocus(Z)V
    .locals 3
    .param p1, "focus"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string v0, "HeadUpNotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eqz p1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 271
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 278
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->updateViewLayout()V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method protected onShowPopup()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 199
    const-string v0, "HeadUpNotificationService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsPopupShowing:Z

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    .line 208
    :cond_0
    iput p3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mStartId:I

    .line 210
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->preShowingNotification()V

    .line 211
    invoke-direct {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->showHeadUpNotification()V

    .line 213
    const-string v0, "sem_statusbar"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 214
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->setHeadUpNotificationWindowFocusable()V

    .line 219
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->onCustomCreate()V

    .line 221
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected preShowingNotification()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method protected removeHeadUpNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    const-string v0, "HeadUpNotificationService"

    const-string v1, "removeHeadUpNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 328
    :cond_0
    iput-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    .line 330
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/HeadUpNotificationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    invoke-virtual {v0}, Lcom/android/incallui/service/HeadUpNotificationView;->removeAllViews()V

    .line 334
    :cond_1
    iput-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    .line 336
    iput-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;

    .line 337
    return-void
.end method

.method protected resetViewLayout()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/HeadUpNotificationView;->setAlpha(F)V

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->setDefaultPosition()V

    .line 290
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->updateViewLayout()V

    .line 291
    return-void
.end method

.method protected setHeadUpNotificationWindowFocusable()V
    .locals 6

    .prologue
    .line 340
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/incallui/service/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 341
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z

    move-result v1

    .line 343
    .local v1, "isAccessoryKeyboardAttached":Z
    iget-object v3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 344
    .local v2, "isTalkbackEnabled":Z
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    const-string v3, "HeadUpNotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TalkbackEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAccessoryKeyboardAttached = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v3, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 349
    invoke-virtual {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->updateViewLayout()V

    .line 351
    :cond_1
    return-void
.end method

.method public updateViewLayout()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    if-eqz v0, :cond_1

    .line 298
    const-string v0, "HeadUpNotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWindowAttributes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;

    iget-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    :cond_1
    return-void
.end method