.class public Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.super Ljava/lang/Object;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$1;,
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;,
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;,
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;,
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;,
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    }
.end annotation


# static fields
.field private static mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# instance fields
.field private mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

.field private mCoverStateClone:Lcom/samsung/android/cover/CoverState;

.field private mCurrentThemePkgName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mInitiallyRegistContentUriList:[Landroid/net/Uri;

.field private mIsNetworkRoaming:Z

.field private final mRegisteredContentUriSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrIntentActionList:[Ljava/lang/String;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryCritical()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryLow()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDisasterViewUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleEmergencyStateChanged()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgHided()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgShowed()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleHomeCityChanged()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleInsertSPen(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleLocaleChanged()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleOpenThemeUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryUpdate(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupCommonDay()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupFestivalDay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerConnectionUpdate(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerSavingModeChanged()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleSendAppOpen(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleSendNotiOpen(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleChangeCoverBackground()V

    return-void
.end method

.method static synthetic -wrap30(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleServiceStateChanged()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleShortcutDrag(Z)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleThemeFontUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleUserSwitched(II)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleVolumeChanged(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleConfigurationChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverAppCovered(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverDelayedTimout(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDateFormatChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    new-instance v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$1;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$1;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    const/16 v4, 0x1e

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    aput-object v6, v4, v5

    const-string/jumbo v6, "android.intent.action.DATE_CHANGED"

    aput-object v6, v4, v8

    const-string/jumbo v6, "android.intent.action.TIME_SET"

    aput-object v6, v4, v9

    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    aput-object v6, v4, v10

    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    aput-object v6, v4, v11

    const-string/jumbo v6, "android.intent.action.BATTERY_LOW"

    const/4 v7, 0x5

    aput-object v6, v4, v7

    const-string/jumbo v6, "android.intent.action.ACTION_POWER_CONNECTED"

    const/4 v7, 0x6

    aput-object v6, v4, v7

    const-string/jumbo v6, "android.intent.action.ACTION_POWER_DISCONNECTED"

    const/4 v7, 0x7

    aput-object v6, v4, v7

    const-string/jumbo v6, "android.intent.action.LOCALE_CHANGED"

    const/16 v7, 0x8

    aput-object v6, v4, v7

    const-string/jumbo v6, "android.intent.action.CONFIGURATION_CHANGED"

    const/16 v7, 0x9

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    const/16 v7, 0xa

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    const/16 v7, 0xb

    aput-object v6, v4, v7

    const-string/jumbo v6, "android.settings.POWERSAVINGMODE_CHANGED"

    const/16 v7, 0xc

    aput-object v6, v4, v7

    const-string/jumbo v6, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    const/16 v7, 0xd

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.samsung.pen.INSERT"

    const/16 v7, 0xe

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    const/16 v7, 0xf

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.sec.android.sviewcover.CHANGE_MINI_COVER_BACKGROUND"

    const/16 v7, 0x10

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.bst.floatingmsg.quicktalkshow"

    const/16 v7, 0x11

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.bst.floatingmsg.quicktalkhide"

    const/16 v7, 0x12

    aput-object v6, v4, v7

    const-string/jumbo v6, "android.media.VOLUME_CHANGED_ACTION"

    const/16 v7, 0x13

    aput-object v6, v4, v7

    const-string/jumbo v6, "android.intent.action.USER_SWITCHED"

    const/16 v7, 0x14

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    const/16 v7, 0x15

    aput-object v6, v4, v7

    const-string/jumbo v6, "clock.date_format_changed"

    const/16 v7, 0x16

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.bst.action.PICKUP_FESTIVAL"

    const/16 v7, 0x17

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.bst.action.PICKUP_COMMON"

    const/16 v7, 0x18

    aput-object v6, v4, v7

    const-string/jumbo v6, "dualclock.homecity_timezone"

    const/16 v7, 0x19

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.samsung.cover.DELAYED_TIMEOUT"

    const/16 v7, 0x1a

    aput-object v6, v4, v7

    const-string/jumbo v6, "FONT_THEME_CHANGED"

    const/16 v7, 0x1b

    aput-object v6, v4, v7

    const-string/jumbo v6, "com.samsung.android.theme.themecenter.THEME_APPLY"

    const/16 v7, 0x1c

    aput-object v6, v4, v7

    const-string/jumbo v6, "android.intent.action.SERVICE_STATE"

    const/16 v7, 0x1d

    aput-object v6, v4, v7

    iput-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mStrIntentActionList:[Ljava/lang/String;

    const/16 v4, 0xa

    new-array v4, v4, [Landroid/net/Uri;

    const-string/jumbo v6, "time_12_24"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    const-string/jumbo v6, "content://settings/system/date_format"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v8

    const-string/jumbo v6, "dualclock_menu_settings"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v9

    const-string/jumbo v6, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v10

    const-string/jumbo v6, "torch_light"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v11

    const-string/jumbo v6, "festival_effect_enabled"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v4, v7

    const-string/jumbo v6, "homecity_timezone"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v4, v7

    const-string/jumbo v6, "font_scale"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v4, v7

    const-string/jumbo v6, "current_sec_appicon_theme_package"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v4, v7

    const-string/jumbo v6, "display_density_forced"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/16 v7, 0x9

    aput-object v6, v4, v7

    iput-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mInitiallyRegistContentUriList:[Landroid/net/Uri;

    new-instance v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;

    invoke-direct {v4, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    iput-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;

    invoke-direct {v4, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    iput-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;

    invoke-direct {v4, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    iput-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-string/jumbo v4, "CoverUI"

    const-string/jumbo v6, "create CoverUpdateMonitor"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;-><init>(Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    new-instance v4, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v4}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mStrIntentActionList:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v0, v6, v4

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mInitiallyRegistContentUriList:[Landroid/net/Uri;

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v3, v6, v4

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerContentObserver(Landroid/net/Uri;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .locals 2

    sget-object v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleBatteryCritical()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onBatteryCritical()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleBatteryLow()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onBatteryLow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleBatteryUpdate(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-static {v4, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->isBatteryUpdateInteresting(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isBatteryCritical()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-virtual {v4}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isBatteryCritical()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14f

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    monitor-exit v5

    :cond_4
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private handleChangeCoverBackground()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onChangeCoverBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleConfigurationChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onConfigurationChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleContentChanged(Landroid/net/Uri;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onContentChanged(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleCoverAppCovered(Z)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverAppCovered(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleCoverDelayedTimout(I)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverDelayedTimout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleDateFormatChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onDateFormatChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleDisasterViewUpdate(Ljava/lang/String;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onDisasterViewUpdated(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleEmergencyStateChanged()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onEmergencyStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleFloatingMsgHided()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onFloatingMsgHided()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleFloatingMsgShowed()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onFloatingMsgShowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleHomeCityChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onHomeCityChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleInsertSPen(Z)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onInsertSPen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleLocaleChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onLocaleChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleOpenThemeUpdate(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v3, "CoverUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleOpenThemeUpdate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onOpenThemeChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handlePackageAdded(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/android/cover/custom/MontblancCoverController;->onPackageUpdated(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageAdded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handlePackageChanged(Ljava/lang/String;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handlePackageRemoved(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/android/cover/custom/MontblancCoverController;->onPackageUpdated(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handlePickupCommonDay()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPickupCommonDay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handlePickupFestivalDay(Ljava/lang/String;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPickupFestivalDay(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handlePowerConnectionUpdate(Z)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPowerConnectionUpdate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handlePowerSavingModeChanged()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPowerSavingModeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleScreenTurnedOff()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleScreenTurnedOn()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleSendAppOpen(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    invoke-interface {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;->startShortcutApp(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private handleSendNotiOpen(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    invoke-interface {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;->startNotifcationIntent(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private handleServiceStateChanged()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    if-eq v4, v3, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    invoke-virtual {v0, v4}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRoamingStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v5

    :cond_2
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private handleShortcutDrag(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    invoke-interface {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;->startShortcutDragAnimation()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    invoke-interface {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;->stopShortcutDragAnimation()V

    goto :goto_0
.end method

.method private handleThemeFontUpdate(Ljava/lang/String;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onThemeFontChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleTimeUpdate()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onTimeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleUserSwitched(II)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onUserSwitched(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleVolumeChanged(II)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onVolumeChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static isBatteryUpdateInteresting(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    iget v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    return v5

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-eq v3, v4, :cond_4

    return v5

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-eq v3, v4, :cond_5

    return v5

    :cond_5
    iget v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-nez v3, :cond_6

    iget v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-eqz v3, :cond_6

    return v5

    :cond_6
    iget v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    iget v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    if-eq v3, v4, :cond_7

    return v5

    :cond_7
    iget-boolean v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->highVoltage:Z

    iget-boolean v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->highVoltage:Z

    if-eq v3, v4, :cond_8

    return v5

    :cond_8
    return v6
.end method

.method private sendUpdates(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onTimeChanged()V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onOpenThemeChanged(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRoamingStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public notifyCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 9

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, p1, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIIIZI)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    const/16 v2, 0x13f

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCoverAppCovered(Z)V
    .locals 4

    const-string/jumbo v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCoverAppCovered() covered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 6

    const-string/jumbo v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string/jumbo v1, "CoverUpdateMonitor"

    const-string/jumbo v3, "Object tried to add another callback"

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "Called by"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendUpdates(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public declared-synchronized registerContentObserver(Landroid/net/Uri;Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendAppShouldOpen(Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14d

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendNotificationPendingIntentOpen(Landroid/app/PendingIntent;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x150

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendShortcutDrag(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setShortcutAppOpenCallback(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 4

    const-string/jumbo v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
