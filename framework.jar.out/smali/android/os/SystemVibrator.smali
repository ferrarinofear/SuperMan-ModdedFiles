.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Vibrator;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    return-void
.end method

.method private static usageForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v1, "Vibrator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called cancel() API - PUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", PackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMaxMagnitude()I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->getMaxMagnitude()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to get the maximum magnitude."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public getVibratorFrequency()I
    .locals 4

    const-wide/32 v2, 0x700234

    invoke-virtual {p0, v2, v3}, Landroid/os/SystemVibrator;->getVibratorFrequency(J)I

    move-result v0

    return v0
.end method

.method public getVibratorFrequency(J)I
    .locals 5

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Vibrator"

    const-string/jumbo v3, "It\'s not Factory Binary"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v2, p1, p2}, Landroid/os/IVibratorService;->readFromFile(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string/jumbo v2, "Vibrator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "success to get freqeuncy value as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Vibrator"

    const-string/jumbo v3, "Failed to vibrate."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "Vibrator"

    const-string/jumbo v3, "fail to get freqeuncy value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public hasVibrator()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->hasVibrator()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v3
.end method

.method public resetMagnitude()V
    .locals 3

    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->resetMagnitude()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to reset the magnitude."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semColorfulVibrate([IILandroid/media/AudioAttributes;I)V
    .locals 11

    :try_start_0
    const-string/jumbo v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called semColorfulVibrate(data, int, AudioAttributes, mag) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", AudioAttr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-static {p3}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v7

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, -0x1

    move-object v3, p1

    move v4, p2

    move v6, p4

    invoke-interface/range {v0 .. v9}, Landroid/os/IVibratorService;->semColorfulVibrate(ILjava/lang/String;[IILandroid/os/IBinder;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v10

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Failed to vibrate."

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semColorfulVibrate([IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 11

    :try_start_0
    const-string/jumbo v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called semColorfulVibrate(data, int, AudioAttributes, Mag) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", AudioAttr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", MagType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-static {p3}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v7

    invoke-virtual {p4}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v6, -0x1

    const/4 v8, -0x1

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v9}, Landroid/os/IVibratorService;->semColorfulVibrate(ILjava/lang/String;[IILandroid/os/IBinder;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v10

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Failed to vibrate."

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semGetMotorType()I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v2}, Landroid/os/IVibratorService;->getMotorType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Vibrator"

    const-string/jumbo v3, "Failed to getMotorType."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semIsForceTouchSupported()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->semIsForceTouchSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v3
.end method

.method public semIsHapticSupported()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->semIsHapticSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v3
.end method

.method public semVibrate(IILandroid/media/AudioAttributes;I)V
    .locals 10

    :try_start_0
    const-string/jumbo v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called semVibrate(int, int, AudioAttributes, mag) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", AudioAttr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-static {p3}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v7

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v8

    move v3, p1

    move v4, p2

    move v6, p4

    invoke-interface/range {v0 .. v8}, Landroid/os/IVibratorService;->vibrateCommonPatternMagnitude(ILjava/lang/String;IILandroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Failed to vibrate."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 10

    :try_start_0
    const-string/jumbo v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called semVibrate(int, int, AudioAttributes, Mag) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", AudioAttr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-static {p3}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v7

    invoke-virtual {p4}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, -0x1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v8}, Landroid/os/IVibratorService;->vibrateCommonPatternMagnitude(ILjava/lang/String;IILandroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Failed to vibrate."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semVibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;ILjava/lang/String;)V
    .locals 13

    iget-object v3, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v3, :cond_0

    const-string/jumbo v3, "Vibrator"

    const-string/jumbo v4, "Failed to vibrate; no vibrator service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v3, "Vibrator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "semVibrate - PUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", PackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", AudioAttr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Mag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static/range {p5 .. p5}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v8

    iget-object v9, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-interface/range {v3 .. v11}, Landroid/os/IVibratorService;->vibrateMagnitude(ILjava/lang/String;JILandroid/os/IBinder;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Vibrator"

    const-string/jumbo v4, "Failed to vibrate."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semVibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;ILjava/lang/String;)V
    .locals 12

    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    array-length v1, p3

    move/from16 v0, p4

    if-ge v0, v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "Vibrator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semVibrate - PUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", PackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", repeat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", AudioAttr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Mag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static/range {p5 .. p5}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    iget-object v7, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    const/4 v9, -0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Landroid/os/IVibratorService;->vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v11

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to vibrate."

    invoke-static {v1, v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public semVibrate(JLandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 9

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Called semVibrate(long, AudioAttributes, SemMagnitudeTypes) API"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v7, -0x1

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v8}, Landroid/os/SystemVibrator;->semVibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;ILjava/lang/String;)V

    return-void
.end method

.method public semVibrate(JLandroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 9

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Called semVibrate(long, SemMagnitudeTypes) API"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/SystemVibrator;->semVibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;ILjava/lang/String;)V

    return-void
.end method

.method public semVibrate([JII)V
    .locals 8

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Called semVibrate(long[], int, int) API"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Landroid/os/SystemVibrator;->semVibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;ILjava/lang/String;)V

    return-void
.end method

.method public semVibrate([JILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 8

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Called semVibrate(long[], int, AudioAttributes, SemMagnitudeTypes) API"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/os/SystemVibrator;->semVibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;ILjava/lang/String;)V

    return-void
.end method

.method public setMagnitude(I)V
    .locals 3

    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1, p1}, Landroid/os/IVibratorService;->setMagnitude(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Vibrator"

    const-string/jumbo v2, "Failed to set the magnitude."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibratorFrequency(I)V
    .locals 2

    const-wide/32 v0, 0x700234

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/SystemVibrator;->setVibratorFrequency(JI)V

    return-void
.end method

.method public setVibratorFrequency(JI)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Vibrator"

    const-string/jumbo v3, "It\'s not Factory Binary"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IVibratorService;->writeToFile(JI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "Vibrator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "success to set freqeuncy value as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Vibrator"

    const-string/jumbo v3, "Failed to vibrate."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "Vibrator"

    const-string/jumbo v3, "fail to set freqeuncy value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 9

    const-string/jumbo v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called vibrate(int, String, long, AudioAttributes) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v7, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/os/SystemVibrator;->semVibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;ILjava/lang/String;)V

    return-void
.end method

.method public vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 8

    const-string/jumbo v0, "Vibrator"

    const-string/jumbo v1, "Called vibrate(int, String, long[], int, AudioAttributes) API"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v0}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/os/SystemVibrator;->semVibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;ILjava/lang/String;)V

    return-void
.end method
