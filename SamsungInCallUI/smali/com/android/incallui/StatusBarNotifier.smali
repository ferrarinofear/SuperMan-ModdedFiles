.class public Lcom/android/incallui/StatusBarNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$UpdateContactListener;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;,
        Lcom/android/incallui/StatusBarNotifier$NotificationTimer;
    }
.end annotation


# static fields
.field public static final EXTRA_AS_HEADS_UP:Ljava/lang/String; = "headsup"

.field public static final HEADS_UP_NEVER:I = 0x0

.field private static final IN_CALL_TIMEOUT:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "StatusBarNotifier"

.field public static final NOTIFICATION_INCOMING_CALL:I = 0x2

.field public static final NOTIFICATION_IN_CALL:I = 0x1

.field public static final NOTIFICATION_NONE:I = 0x0

.field public static final REJECT_CALL_NOTIFICATION:I = 0x3

.field private static final SHOW_GREEN_BAR:I = 0x65

.field private static final SHOW_GREEN_BAR_DELAY:I = 0x3e8

.field private static final SHOW_REJECTED_CALL_NOTIFICATION:I = 0x64

.field private static final SHOW_REJECTED_CALL_NOTIFICATION_DELAY:I = 0x3e8

.field private static final SUPPORT_SEC_WFC:Z

.field private static mSvcConn:Landroid/content/ServiceConnection;

.field private static mVolteService:Lcom/sec/ims/volte2/IVolteService;


# instance fields
.field private mBlockToUpdate:Z

.field private mCallId:Ljava/lang/String;

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNotification:I

.field private mEmergencyNeedToChange:Z

.field private mFgCallState:I

.field private mHandler:Landroid/os/Handler;

.field private mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

.field private mInCallImsEventListener:Lcom/sec/ims/volte2/ImsCallEventListener;

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsE911OverVoLTE:Z

.field private mIsShowingNotification:Z

.field private mIsWFCListenerRegistered:Z

.field private mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRegiListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

.field private mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/StatusBarNotifier;->SUPPORT_SEC_WFC:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/StatusBarNotifier;->mSvcConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$1;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mIsWFCListenerRegistered:Z

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    iput v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    iput v3, p0, Lcom/android/incallui/StatusBarNotifier;->mFgCallState:I

    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$2;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$3;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mRegiListener:Lcom/sec/ims/IImsRegistrationListener;

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$4;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallImsEventListener:Lcom/sec/ims/volte2/ImsCallEventListener;

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$5;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$6;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iput v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    const-string v0, "StatusBarNotifier"

    const-string v1, "registerReceiver for ACTION_LOCALE_CHANGED"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addUpdateContactListener(Lcom/android/incallui/InCallPresenter$UpdateContactListener;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "sem_statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    sget-boolean v0, Lcom/android/incallui/StatusBarNotifier;->SUPPORT_SEC_WFC:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mIsE911OverVoLTE:Z

    new-instance v0, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerHandlerForWfcRegistrationStateChage(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerObserver()V

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->registerImsRegistrationListener()V

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->registerImsCallStatusListener()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/StatusBarNotifier;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/StatusBarNotifier;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->updateNotificationForVoWifi()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/incallui/StatusBarNotifier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/StatusBarNotifier;->mIsE911OverVoLTE:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->handleShowGreenBarMessage()V

    return-void
.end method

.method static synthetic access$600()Lcom/sec/ims/volte2/IVolteService;
    .locals 1

    sget-object v0, Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;
    .locals 0

    sput-object p0, Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/incallui/StatusBarNotifier;)Lcom/sec/ims/volte2/ImsCallEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallImsEventListener:Lcom/sec/ims/volte2/ImsCallEventListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/StatusBarNotifier;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method private addPersonReference(Landroid/app/Notification;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-wide v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people"

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "tel"

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 15

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "StatusBarNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBlockToUpdate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->isWfcSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "common_volte_in"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIsWFCListenerRegistered:Z

    if-nez v2, :cond_4

    const-string v2, "StatusBarNotifier"

    const-string v5, "Registering wfc state listener "

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->registerImsRegistrationListener()V

    :cond_4
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v2, 0x4

    move v11, v2

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    const/4 v2, 0x1

    move v7, v2

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplay(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-direct {p0, v3}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplayForVT(Lcom/android/incallui/Call;)I

    move-result v2

    move v6, v2

    :goto_3
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/incallui/Call;)I

    move-result v8

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    if-nez v7, :cond_7

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->showAll()V

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v7, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v5, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    :cond_6
    iget-object v7, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    iget-object v2, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v11, v7}, Lcom/android/incallui/StatusBarNotifier;->showGreenBar(ZIZ)V

    iput v11, p0, Lcom/android/incallui/StatusBarNotifier;->mFgCallState:I

    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "StatusBarNotifier"

    const-string v3, "skip buildAndSendNotification when tphone mode"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_2

    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    :cond_a
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent(Z)Landroid/app/PendingIntent;

    move-result-object v12

    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    iget-object v2, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "headsup"

    const/4 v14, 0x0

    invoke-virtual {v2, v7, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.title"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.text"

    iget-object v14, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, v13, Landroid/app/Notification;->icon:I

    iget v2, v13, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v13, Landroid/app/Notification;->flags:I

    iput-object v12, v13, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    if-eq v11, v2, :cond_b

    const/16 v2, 0x8

    if-ne v11, v2, :cond_10

    :cond_b
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    const-string v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v8

    const/4 v14, 0x2

    if-ne v8, v14, :cond_c

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    :cond_c
    :goto_4
    new-instance v2, Lcom/android/incallui/widget/SecMiniController;

    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v14, 0x7f040101

    invoke-direct {v2, v8, v14}, Lcom/android/incallui/widget/SecMiniController;-><init>(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/incallui/widget/SecMiniController;->initInCallQuickPanel(Landroid/content/Context;)V

    iget-boolean v8, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/incallui/widget/SecMiniController;->updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;JZJ)V

    iput-object v2, v13, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x2

    iput v2, v13, Landroid/app/Notification;->priority:I

    const/16 v2, 0xa

    iput v2, v13, Landroid/app/Notification;->semPriority:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/incallui/StatusBarNotifier;->setContentHiddenNotification(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)Landroid/app/Notification;

    move-result-object v2

    iput-object v2, v13, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v0, p2

    invoke-direct {p0, v13, v0, v3}, Lcom/android/incallui/StatusBarNotifier;->addPersonReference(Landroid/app/Notification;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)V

    const/4 v2, 0x4

    if-eq v11, v2, :cond_d

    const/4 v2, 0x5

    if-ne v11, v2, :cond_11

    :cond_d
    const/4 v2, 0x2

    const-string v4, "call"

    iput-object v4, v13, Landroid/app/Notification;->category:Ljava/lang/String;

    move v4, v2

    :goto_5
    const/4 v2, 0x2

    if-ne v4, v2, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz p3, :cond_e

    invoke-direct {p0, v13, v12, v3}, Lcom/android/incallui/StatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V

    :cond_e
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/incallui/StatusBarNotifier;->SUPPORT_SEC_WFC:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v3}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v2, :cond_f

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIsE911OverVoLTE:Z

    if-nez v2, :cond_f

    const-string v2, "StatusBarNotifier"

    const-string v3, "SecWFC notification helper : set inCall notification minimum"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x2

    iput v2, v13, Landroid/app/Notification;->priority:I

    iget v2, v13, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v13, Landroid/app/Notification;->semFlags:I

    :cond_f
    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    if-eqz v2, :cond_12

    const-string v2, "StatusBarNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBlockToUpdate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-wide/16 v6, -0x1

    goto/16 :goto_4

    :cond_11
    const/4 v2, 0x1

    move v4, v2

    goto :goto_5

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check fullScreenIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Displaying notification for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eq v2, v4, :cond_13

    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous notification already showing - cancelling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :try_start_3
    iget v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/StatusBarNotifier;->cancelAsUser(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_13
    :goto_6
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, v2, v4, v13}, Lcom/android/incallui/StatusBarNotifier;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;)V

    iput v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_7
    :try_start_5
    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "StatusBarNotifier"

    const-string v3, "cancelInCall buildAndSendNotification when tphone mode"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    :cond_14
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "StatusBarNotifier"

    const-string v5, "Error cancelAsUser Exception"

    invoke-static {v3, v5, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    :catch_1
    move-exception v2

    const-string v3, "StatusBarNotifier"

    const-string v4, "Error notifyAsUser Exception"

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :cond_15
    move v6, v2

    goto/16 :goto_3

    :cond_16
    move v11, v2

    goto/16 :goto_1
.end method

.method public static clearAllCallNotifications(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Something terrible happened. Clear all InCall notifications"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private configureFullScreenIntent(Landroid/app/Notification;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v1, 0x1

    const-string v0, "StatusBarNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Setting fullScreenIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "StatusBarNotifier"

    const-string v2, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createCallLogPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "StatusBarNotifier"

    const-string v1, "createCallLogPendingIntent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    invoke-virtual {v1, v3, v3}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createLaunchPendingIntent(Z)Landroid/app/PendingIntent;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v3

    :try_start_0
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallActivityOptions()Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    if-eqz p1, :cond_0

    const/high16 v1, 0x10000000

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "StatusBarNotifier"

    const-string v2, "createLaunchPendingIntent() - NullPointerException"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method private createNotificationPendingIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createPendingIntentForSReminder(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.operator.chn.SReminderDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "personId"

    iget-wide v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getContentString(Lcom/android/incallui/Call;)I
    .locals 3

    const v0, 0x7f090063

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_0
    const v0, 0x7f09005f

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    const v0, 0x7f090062

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f09005e

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const v0, 0x7f090064

    goto :goto_0
.end method

.method private getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method private getIconToDisplay(Lcom/android/incallui/Call;)I
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->isWfcSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/StatusBarNotifier;->isAvailableVoWIFI()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StatusBarNotifier"

    const-string v1, "Registered over Wi-Fi"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0201a2

    :goto_0
    return v0

    :cond_0
    const-string v0, "StatusBarNotifier"

    const-string v3, "Registered over Wi-Fi but call is normal"

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    if-eqz v0, :cond_4

    const v0, 0x7f02033e

    goto :goto_0

    :cond_2
    const-string v0, "StatusBarNotifier"

    const-string v3, "Not-Registered over Wi-Fi"

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v2, :cond_8

    const v0, 0x7f020331

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    const v0, 0x7f020333

    goto :goto_0

    :cond_7
    const v0, 0x7f020334

    goto :goto_0

    :cond_8
    const v0, 0x7f020332

    goto :goto_0

    :cond_9
    if-eqz v0, :cond_a

    const v0, 0x7f02033d

    goto :goto_0

    :cond_a
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v0

    if-nez v0, :cond_b

    const v0, 0x7f020335

    goto :goto_0

    :cond_b
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v0

    if-ne v0, v1, :cond_c

    const v0, 0x7f020336

    goto/16 :goto_0

    :cond_c
    if-eqz v2, :cond_d

    const v0, 0x7f02032f

    goto/16 :goto_0

    :cond_d
    const v0, 0x7f020330

    goto/16 :goto_0
.end method

.method private getIconToDisplayForVT(Lcom/android/incallui/Call;)I
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v2

    if-eqz p1, :cond_0

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_1

    const v0, 0x7f020340

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v2, :cond_5

    const v0, 0x7f020339

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const v0, 0x7f02033b

    goto :goto_1

    :cond_4
    const v0, 0x7f02033c

    goto :goto_1

    :cond_5
    const v0, 0x7f02033a

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    const v0, 0x7f02033f

    goto :goto_1

    :cond_7
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f020335

    goto :goto_1

    :cond_8
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v0

    if-ne v0, v1, :cond_9

    const v0, 0x7f020336

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_a

    const v0, 0x7f020337

    goto :goto_1

    :cond_a
    const v0, 0x7f020338

    goto :goto_1
.end method

.method private getKnoxKeyguardShowState()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLargeIconForRejectedCall(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "StatusBarNotifier"

    const-string v1, "getLargeIconForRejectedCall"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconTextToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/graphics/Bitmap;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getImageIconForNotification(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getTextIconForNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0e01b5

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f020102

    invoke-static {v1, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getImageIconForNotification(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getLargeIconTextToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/graphics/Bitmap;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v3

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-boolean v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_3
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02046a

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0342

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_3
    iget-boolean v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_5
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    if-eqz v0, :cond_6

    if-gt v3, v5, :cond_6

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    iget-object v2, v2, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_9

    if-ne v3, v5, :cond_7

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0201ed

    invoke-static {v0, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    if-ne v3, v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0201ef

    invoke-static {v0, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x3

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0201ee

    invoke-static {v0, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    const-string v2, "StatusBarNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLargeIconToDisplay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4
    const-string v2, "StatusBarNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLargeIconToDisplay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private handleShowGreenBarMessage()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e017e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e017d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private isWfcSupported()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "StatusBarNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEpdgFeatureEnabled epdgFeatured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "StatusBarNotifier"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private registerImsCallStatusListener()V
    .locals 4

    const-string v0, "StatusBarNotifier"

    const-string v1, "registerCallStatusListener()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.VolteService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/android/incallui/StatusBarNotifier$7;

    invoke-direct {v1, p0}, Lcom/android/incallui/StatusBarNotifier$7;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    sput-object v1, Lcom/android/incallui/StatusBarNotifier;->mSvcConn:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/incallui/StatusBarNotifier;->mSvcConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private registerImsRegistrationListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mRegiListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsWFCListenerRegistered:Z

    return-void
.end method

.method private setContentHiddenNotification(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)Landroid/app/Notification;
    .locals 8

    const/4 v6, 0x1

    new-instance v0, Lcom/android/incallui/widget/SecMiniControllerHidden;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040102

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/SecMiniControllerHidden;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecMiniControllerHidden;->initInCallQuickPanel(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/widget/SecMiniControllerHidden;->updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)V

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private showNotification(Lcom/android/incallui/Call;Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;-><init>(Lcom/android/incallui/StatusBarNotifier;Z)V

    iput-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    :cond_2
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    new-instance v3, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-direct {v3, p0, v2}, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;-><init>(Lcom/android/incallui/StatusBarNotifier;Z)V

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_1
.end method

.method private unregisterImsCallStatusListener()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallImsEventListener:Lcom/sec/ims/volte2/ImsCallEventListener;

    invoke-interface {v0, v1}, Lcom/sec/ims/volte2/IVolteService;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterImsRegistrationListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsWFCListenerRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mRegiListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsWFCListenerRegistered:Z

    :cond_0
    return-void
.end method

.method private updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "StatusBarNotifier"

    const-string v2, "do not updateInCallNotification when tphone mode"

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInCallNotification(allowFullScreenIntent = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {p3, v0, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_9

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v3

    if-eqz v3, :cond_a

    move v3, v1

    :goto_2
    const-string v5, "StatusBarNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOutgoingWithoutIncallUi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isDeskTopModeWithServicePopup : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v4, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v5

    if-nez v5, :cond_b

    :cond_5
    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v5}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v5, v6, :cond_b

    :cond_6
    if-nez v3, :cond_b

    :goto_3
    if-eqz v1, :cond_c

    invoke-direct {p0, v4, p1}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/incallui/Call;Z)V

    :cond_7
    :goto_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez v4, :cond_2

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v0}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->clear()V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    move v3, v2

    goto :goto_2

    :cond_b
    move v1, v2

    goto :goto_3

    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v0, "StatusBarNotifier"

    const-string v1, "updateInCallNotification: skip"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    :cond_e
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v0}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v0}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->schedule()V

    goto :goto_4
.end method

.method private updateNotificationForContact(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;-><init>(Lcom/android/incallui/StatusBarNotifier;Z)V

    iput-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/incallui/ContactInfoCache;->findInfoWithCache(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private updateNotificationForVoWifi()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->isWfcSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAsUser(Ljava/lang/String;I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/UserManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/wrapper/UserInfoWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/UserInfoWrapper;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "StatusBarNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string v2, "android.app.NotificationManager"

    invoke-static {v2}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "cancelAsUser"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    const-class v5, Landroid/os/UserHandle;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v8

    invoke-static {v3, v2, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cancelInCall()V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v0, "StatusBarNotifier"

    const-string v2, "cancelInCall()..."

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    iput-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_8

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    :cond_1
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const-string v2, "StatusBarNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The active notification id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_0
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eqz v2, :cond_7

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/StatusBarNotifier;->cancelAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->isWfcSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->unregisterImsRegistrationListener()V

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "sem_statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/StatusBarNotifier;->cancelAsUser(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "StatusBarNotifier"

    const-string v3, "Error cancelAsUser Exception"

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public clearRejectCallNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public isAvailableVoWIFI()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->isWfcSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mmtel"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->isServiceRegistered(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceRegistered(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v2

    const-string v3, "volte"

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v3

    if-ne v3, v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    const-string v1, "StatusBarNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isServiceRegistered Services : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EpdgStatus :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v1, "StatusBarNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isServiceRegistered feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isCheckVoWifi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isServiceRegistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {v2, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public makeNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/incallui/StatusBarNotifier$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier$8;-><init>(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :try_start_0
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBarNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeNotification : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public memoryFullAnswerMemoNotification()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "StatusBarNotifier"

    const-string v1, "memoryFullAnswerMemoNotification"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.Answermemo.SHOW_MEMO_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0201f9

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f0905f2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f0905f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public needToShowAsFullScreen(Lcom/android/incallui/CallList;)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowAsFullScreen()Z

    move-result v0

    return v0
.end method

.method public notifyAsMultiUser(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/UserManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/wrapper/UserInfoWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getId()I

    move-result v2

    const-string v3, "StatusBarNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify Multiuser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string v2, "android.app.NotificationManager"

    invoke-static {v2}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "notifyAsUser"

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    const-class v5, Landroid/app/Notification;

    aput-object v5, v4, v8

    const-class v5, Landroid/os/UserHandle;

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p3, v4, v8

    aput-object v0, v4, v9

    invoke-static {v3, v2, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/UserManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/wrapper/UserInfoWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/UserInfoWrapper;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "StatusBarNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string v2, "android.app.NotificationManager"

    invoke-static {v2}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "notifyAsUser"

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    const-class v5, Landroid/app/Notification;

    aput-object v5, v4, v8

    const-class v5, Landroid/os/UserHandle;

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p3, v4, v8

    aput-object v0, v4, v9

    invoke-static {v3, v2, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyRejectCallNotification(Landroid/app/Notification;)V
    .locals 2

    const-string v0, "StatusBarNotifier"

    const-string v1, "notifyRejectCallNotification"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onChildNumberChange()V
    .locals 0

    return-void
.end method

.method public onContactChanged()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->updateNotificationForContact(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLastForwardedNumberChange()V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    :cond_1
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const-string v0, "onStateChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    return-void
.end method

.method public registerRejectCallNotification(Z)V
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v10, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string v0, "support_sassistant"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "StatusBarNotifier"

    const-string v1, "The rejected call notification was hide."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f02032c

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e01be

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v8, 0x7f0902ad

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "com.samsung.android.incallui.ACTION_DELETE_REJECT_NOTIFICATION"

    invoke-direct {p0, v7, v0}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconForRejectedCall(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f09030f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.incallui.ACTION_VOICE_CALL"

    invoke-direct {p0, v3, v0}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v5, v2, v1, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0902ac

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/StatusBarNotifier;->createPendingIntentForSReminder(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    const-string v1, "StatusBarNotifier"

    const-string v2, "registerRejectCallNotification"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public setBlockToUpdate(Z)V
    .locals 3

    const-string v0, "StatusBarNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockToUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    return-void
.end method

.method public showGreenBar(ZIZ)V
    .locals 5

    const/4 v1, 0x0

    const/16 v4, 0x65

    if-nez p3, :cond_1

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/StatusBarNotifier;->mFgCallState:I

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "sem_statusbar"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    :cond_2
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    move p1, v1

    :cond_3
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    const-string v0, "StatusBarNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showGreenBar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    goto/16 :goto_0

    :cond_6
    move v1, p1

    goto :goto_1
.end method

.method public tearDown()V
    .locals 3

    const-string v0, "StatusBarNotifier"

    const-string v1, "tearDown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeUpdateContactListener(Lcom/android/incallui/InCallPresenter$UpdateContactListener;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    sget-boolean v0, Lcom/android/incallui/StatusBarNotifier;->SUPPORT_SEC_WFC:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->unregisterObserver()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->unregisterImsRegistrationListener()V

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->unregisterImsCallStatusListener()V

    :cond_1
    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/bike/BikeModeController;->updateNotificationConsumed()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)Z
    .locals 1

    iput-boolean p3, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v0

    return v0
.end method

.method public updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "StatusBarNotifier"

    const-string v1, "do not updateNotificationAndLaunchIncomingCallUi when tphone mode"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return v4

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->updateNotificationAndLaunchIncomingCallUiConsumed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    const-string v0, "game_no_interruption"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isGameNoInterruption()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isDaydreamConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->setFullScreenMode(Z)V

    invoke-direct {p0, v5, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/incallui/StatusBarNotifier;->needToShowAsFullScreen(Lcom/android/incallui/CallList;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->setFullScreenMode(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->lock()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->sendMsgCheckUILocked()V

    :cond_8
    const-string v0, "StatusBarNotifier"

    const-string v1, "perf - updateNotificationAndLaunchIncomingCallUi"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    invoke-direct {p0, v4, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui"

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "IVDT"

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/AppLogging;->getCallTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v0, "IVCT"

    goto :goto_1

    :cond_a
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->setFullScreenMode(Z)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_b
    invoke-direct {p0, v5, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto/16 :goto_0
.end method
