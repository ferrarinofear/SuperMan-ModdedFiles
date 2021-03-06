.class public Lcom/android/incallui/service/VideoPipService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/android/incallui/InCallNotifier$VideoDetailsListener;
.implements Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/VideoPipService$PipDisplayListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_HIDE:F = 0.0f

.field protected static final ALPHA_SHOW:F = 1.0f

.field public static final CENTAGE_PIP_LANDSCAPE:F = 22.0f

.field public static final CENTAGE_PIP_PORTRAIT:F = 25.0f

.field private static final DP_ELEVATION:I = 0x4

.field private static final DP_OFFSET_X:I = 0x14

.field private static final DP_OFFSET_Y:I = 0x8

.field protected static final EVENT_LONG_CLICK:I = 0xc8

.field private static final ONE_HOUR:J = 0x36ee80L

.field protected static final TIMEOUT_MS_1000:I = 0x3e8

.field protected static final TIMEOUT_MS_500:I = 0x1f4


# instance fields
.field protected final MOVE_THRESHOLD:I

.field private PREV_X:I

.field private PREV_Y:I

.field private START_X:F

.field private START_Y:F

.field protected final TOUCH_THRESHOLD:I

.field private mCallEndBlinkCnt:I

.field private mCallIcon:Landroid/widget/ImageView;

.field private mCallInfoContainter:Landroid/view/View;

.field private mCallTime:Landroid/widget/Chronometer;

.field protected mContext:Landroid/content/Context;

.field private mDeletePopup:Landroid/app/AlertDialog;

.field protected mDisplayDensity:F

.field private mDisplayListener:Lcom/android/incallui/service/VideoPipService$PipDisplayListener;

.field protected mDisplayTemplete:Lcom/android/incallui/util/VideoTemplate;

.field public mHandler:Landroid/os/Handler;

.field private mIsOverMoveThreshold:Z

.field private mIsRunning:Z

.field private mLastDownEventTime:J

.field protected mParent:Landroid/view/ViewGroup;

.field private mPipVideo:Landroid/view/TextureView;

.field private mPipVideoContainer:Landroid/widget/RelativeLayout;

.field private mPipVideoImage:Landroid/widget/ImageView;

.field private mPreviewType:Z

.field private mPrimary:Lcom/android/incallui/Call;

.field private mRootView:Lcom/android/incallui/service/VideoPipView;

.field private mSavedSurface:Landroid/view/Surface;

.field private mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

.field private mVideoReady:Z

.field protected mVideoTemplate:Lcom/android/incallui/util/VideoTemplate;

.field private mViewTouchListener:Landroid/view/View$OnTouchListener;

.field protected mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDeletePopup:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayDensity:F

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayTemplete:Lcom/android/incallui/util/VideoTemplate;

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoTemplate:Lcom/android/incallui/util/VideoTemplate;

    iput v1, p0, Lcom/android/incallui/service/VideoPipService;->mCallEndBlinkCnt:I

    iput-boolean v1, p0, Lcom/android/incallui/service/VideoPipService;->mPreviewType:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/VideoPipService;->mIsRunning:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/VideoPipService;->mVideoReady:Z

    new-instance v0, Lcom/android/incallui/service/VideoPipService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/VideoPipService$1;-><init>(Lcom/android/incallui/service/VideoPipService;)V

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/incallui/service/VideoPipService;->TOUCH_THRESHOLD:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/incallui/service/VideoPipService;->MOVE_THRESHOLD:I

    new-instance v0, Lcom/android/incallui/service/VideoPipService$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/VideoPipService$2;-><init>(Lcom/android/incallui/service/VideoPipService;)V

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/VideoPipService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->stopLongClickCheck()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/VideoPipService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mIsOverMoveThreshold:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/service/VideoPipService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/service/VideoPipService;->mIsOverMoveThreshold:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/service/VideoPipService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/service/VideoPipService;->mLastDownEventTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/incallui/service/VideoPipService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/incallui/service/VideoPipService;->mLastDownEventTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/incallui/service/VideoPipService;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/VideoPipService;->START_X:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/service/VideoPipService;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/VideoPipService;->START_X:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/service/VideoPipService;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/VideoPipService;->START_Y:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/service/VideoPipService;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/VideoPipService;->START_Y:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/service/VideoPipService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/VideoPipService;->PREV_X:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/service/VideoPipService;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/VideoPipService;->PREV_X:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/service/VideoPipService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/VideoPipService;->PREV_Y:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/incallui/service/VideoPipService;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/VideoPipService;->PREV_Y:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/incallui/service/VideoPipService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->startLongClickCheck()V

    return-void
.end method

.method private addListener()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->setVideoPipService(Lcom/android/incallui/service/VideoPipService;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addVideoSessionEventListener(Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addVideoDetailsListener(Lcom/android/incallui/InCallNotifier$VideoDetailsListener;)V

    return-void
.end method

.method private disableDisplayListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayListener:Lcom/android/incallui/service/VideoPipService$PipDisplayListener;

    if-eqz v0, :cond_0

    const-string v0, "disableDisplayListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayListener:Lcom/android/incallui/service/VideoPipService$PipDisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayListener:Lcom/android/incallui/service/VideoPipService$PipDisplayListener;

    :cond_0
    return-void
.end method

.method private enableDisplayListener()V
    .locals 3

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayListener:Lcom/android/incallui/service/VideoPipService$PipDisplayListener;

    if-nez v0, :cond_0

    const-string v0, "enableDisplayListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->notifyRotationChanged(I)V

    new-instance v0, Lcom/android/incallui/service/VideoPipService$PipDisplayListener;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/VideoPipService$PipDisplayListener;-><init>(Lcom/android/incallui/service/VideoPipService;)V

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayListener:Lcom/android/incallui/service/VideoPipService$PipDisplayListener;

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayListener:Lcom/android/incallui/service/VideoPipService$PipDisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private goInCallScreen()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goInCallScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeListener()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoSessionEventListener(Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoDetailsListener(Lcom/android/incallui/InCallNotifier$VideoDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setVideoPipService(Lcom/android/incallui/service/VideoPipService;)V

    return-void
.end method

.method private setCallTime(Lcom/android/incallui/Call;)V
    .locals 4

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method private setPipVideoVisible(Z)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "setPipVideoVisible - SHOW"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "setPipVideoVisible - HIDE"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    goto :goto_0
.end method

.method private setVideoReady(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoReady:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/service/VideoPipService;->mVideoReady:Z

    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->isAvailableVideo(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/service/VideoPipService;->setPipVideoVisible(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/VideoPipService;->setPipVideoVisible(Z)V

    goto :goto_0
.end method

.method private startLongClickCheck()V
    .locals 4

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->stopLongClickCheck()V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopLongClickCheck()V
    .locals 2

    const/16 v1, 0xc8

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canShow(Lcom/android/incallui/Call;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    const/4 v4, -0x2

    const/16 v0, 0x7d2

    const v1, 0x1040068

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    invoke-direct {v2, v0, v1, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->getPositionX()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->getPositionY()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x33

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x20

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const v0, 0x7f0b001a

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method protected getPositionX()I
    .locals 2

    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getPositionY()I
    .locals 2

    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getVideoDimension(Lcom/android/incallui/Call;)Lcom/android/incallui/service/vt/VideoDimension;
    .locals 2

    new-instance v0, Lcom/android/incallui/service/vt/VideoDimension;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoDimension;-><init>()V

    iget-boolean v1, p0, Lcom/android/incallui/service/VideoPipService;->mPreviewType:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoDetails;->getPreviewDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDimension;->swap()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoDetails;->getPeerDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PEER_DIMENSION:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDimension;->swap()V

    goto :goto_0
.end method

.method protected getVideoTemplete(Lcom/android/incallui/Call;)Lcom/android/incallui/util/VideoTemplate;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/VideoPipService;->getVideoDimension(Lcom/android/incallui/Call;)Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v1}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayTemplete:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayTemplete:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatioLandscape()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->getCenterFitSizeTemplete(F)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :goto_0
    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->isLandscape()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDimension;->isLandscape()Z

    move-result v0

    if-eq v2, v0, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->invertSize()V

    :cond_0
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Weight;->getRatePercent(F)F

    move-result v0

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Weight;->getRatePercent(F)F

    move-result v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/util/VideoTemplate;->setSize(II)V

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayTemplete:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDimension;->getAspectRatioPortrait()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/util/VideoTemplate;->getCenterFitSizeTemplete(F)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04019e

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isAvailableVideo(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mPreviewType:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTxEnabled(Lcom/android/incallui/Call;)Z

    move-result v0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableVideo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoRxEnabled(Lcom/android/incallui/Call;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mIsRunning:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/service/VideoPipService;->setTTS(J)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "onConfigurationChanged"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->updateDisplayInfo()V

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->getDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->updateViewLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->onStateChange()V

    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "onCreate "

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mIsRunning:Z

    iput-object p0, p0, Lcom/android/incallui/service/VideoPipService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PIP_TYPE_PREVIEW:Z

    iput-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mPreviewType:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallEndBlinkCnt:I

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/service/VideoPipView;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/VideoPipView;-><init>(Lcom/android/incallui/service/VideoPipService;)V

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/VideoPipView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->inflateView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->onFinishInflate(Landroid/view/ViewGroup;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->updateDisplayInfo()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->getDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->updateViewLayout()V

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->addListener()V

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->enableDisplayListener()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "onDestroy "

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->stopLongClickCheck()V

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->disableDisplayListener()V

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->removeListener()V

    invoke-direct {p0, v2}, Lcom/android/incallui/service/VideoPipService;->setCallTime(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideoImage:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mCallIcon:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mDeletePopup:Landroid/app/AlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/VideoPipView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    invoke-virtual {v0}, Lcom/android/incallui/service/VideoPipView;->removeAllViews()V

    :cond_5
    iput-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    return-void
.end method

.method protected onFinishInflate(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "onFinishInflate "

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    const v0, 0x7f1004ce

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideoContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f1004cf

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideoImage:Landroid/widget/ImageView;

    const v0, 0x7f1004d0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    const v0, 0x7f1004d1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallInfoContainter:Landroid/view/View;

    const v0, 0x7f1004d2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallIcon:Landroid/widget/ImageView;

    const v0, 0x7f1004d3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    :cond_1
    return-void
.end method

.method public onFocus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->updateViewLayout()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method protected onLongTouchEvent()V
    .locals 6

    const v0, 0x7f090065

    const v1, 0x7f090105

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0010

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/incallui/service/VideoPipService$4;

    invoke-direct {v3, p0}, Lcom/android/incallui/service/VideoPipService$4;-><init>(Lcom/android/incallui/service/VideoPipService;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/service/VideoPipService$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/VideoPipService$3;-><init>(Lcom/android/incallui/service/VideoPipService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "incall_popup_call_remove_title"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "incall_popup_call_remove_message"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDeletePopup:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onStateChange()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/service/VideoPipService;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->updateVideoDetails()V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->canShow(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->updateVideoDimension(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->updateVideoContainer(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->updateCallInfoContainer(Lcom/android/incallui/Call;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->stopPipService()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->stopPipService()V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "onSurfaceTextureAvailable..."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideo:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->setVideoSurface()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string v0, "onSurfaceTextureDestroyed..."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/service/VideoPipService;->mPreviewType:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->checkAndDestroyPreviewSurface(Landroid/view/Surface;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->setDoneWithSurface()V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->checkAndDestroyDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method protected onTouchEventDown()V
    .locals 0

    return-void
.end method

.method protected onTouchEventUp()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->stopPipService()V

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->goInCallScreen()V

    return-void
.end method

.method public onVideoDetailsChanged(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDetails;->isVideoDimensionChanged(Lcom/android/incallui/service/vt/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->onStateChange()V

    goto :goto_0
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v0, p2}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSessionEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :cond_2
    :goto_1
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mPreviewType:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/incallui/service/VideoPipService;->setVideoReady(Z)V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mPreviewType:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/incallui/service/VideoPipService;->setVideoReady(Z)V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mPreviewType:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lcom/android/incallui/service/VideoPipService;->setVideoReady(Z)V

    goto :goto_1

    :sswitch_3
    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mPreviewType:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/incallui/service/VideoPipService;->setVideoReady(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_3
        0x12c -> :sswitch_2
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
    .end sparse-switch
.end method

.method public setDoneWithSurface()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method setTTS(J)V
    .locals 11

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v1, 0x1

    const/4 v2, 0x0

    div-long v4, p1, v8

    long-to-int v3, v4

    rem-long v4, p1, v8

    div-long/2addr v4, v6

    long-to-int v4, v4

    rem-long v6, p1, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "%d"

    aput-object v7, v6, v2

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    const v4, 0x7f090365

    invoke-virtual {p0, v4}, Lcom/android/incallui/service/VideoPipService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v6, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    const v5, 0x7f090367

    invoke-virtual {p0, v5}, Lcom/android/incallui/service/VideoPipService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f090364

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/VideoPipService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v6, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public setVideoSurface()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->isAvailableVideo(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/service/VideoPipService;->mPreviewType:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPreviewSurface(Landroid/view/Surface;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method protected setVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const-string v0, "setVisible : parent is null "

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopPipService()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mIsRunning:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "stopPipService"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/incallui/service/VideoPipService;->mIsRunning:Z

    invoke-direct {p0, v2}, Lcom/android/incallui/service/VideoPipService;->setCallTime(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->removeListener()V

    invoke-direct {p0}, Lcom/android/incallui/service/VideoPipService;->disableDisplayListener()V

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/VideoPipService;->setVisible(Z)V

    iput-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->stopSelf()V

    goto :goto_0
.end method

.method public updateCallInfoContainer(Lcom/android/incallui/Call;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallInfoContainter:Landroid/view/View;

    const v1, 0x7f020393

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallIcon:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->getVideoTypeIcon(Lcom/android/incallui/Call;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mCallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/service/VideoPipService;->setCallTime(Lcom/android/incallui/Call;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallInfoContainter:Landroid/view/View;

    const v1, 0x7f020394

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mCallIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method protected updateDisplayInfo()V
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/VideoPipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayTemplete:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/util/VideoTemplate;->set(FF)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayTemplete:Lcom/android/incallui/util/VideoTemplate;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/util/VideoTemplate;->setSize(II)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/incallui/service/VideoPipService;->mDisplayDensity:F

    :cond_0
    return-void
.end method

.method protected updateVideoContainer(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/VideoPipService;->getVideoTemplete(Lcom/android/incallui/Call;)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mVideoTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mVideoTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mVideoTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mVideoTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideoContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mVideoTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mVideoTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mPipVideoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/VideoPipService;->isAvailableVideo(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoReady:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/service/VideoPipService;->setVideoSurface()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/service/VideoPipService;->setPipVideoVisible(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/VideoPipService;->setVideoReady(Z)V

    goto :goto_0
.end method

.method protected updateVideoDetails()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/service/vt/VideoDetails;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoDetails;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDetails;->update(Lcom/android/incallui/service/vt/VideoDetails;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    goto :goto_0
.end method

.method protected updateVideoDimension(Lcom/android/incallui/Call;)V
    .locals 3

    const/16 v2, 0x500

    const/16 v1, 0x2d0

    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->isHD720(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PREVIEW_DIMENSION:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/service/vt/VideoDetails;->setPreviewDimension(II)V

    :cond_0
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PEER_DIMENSION:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerDimension(II)V

    :cond_1
    return-void
.end method

.method public updateViewLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService;->mRootView:Lcom/android/incallui/service/VideoPipView;

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
