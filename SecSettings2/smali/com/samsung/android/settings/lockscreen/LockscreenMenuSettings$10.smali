.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

.field final synthetic val$mUserId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;->val$mUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;->val$mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "isAfw"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
