.class Lcom/android/incallui/operator/chn/SpamCallServiceMgr$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/chn/SpamCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/chn/SpamCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr$1;->this$0:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "checkserviceConnection - onServiceConnected "

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->access$000(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/bst/spamcall/numbermark/b$a;->a(Landroid/os/IBinder;)Lcom/bst/spamcall/numbermark/b;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->access$102(Lcom/bst/spamcall/numbermark/b;)Lcom/bst/spamcall/numbermark/b;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "onServiceDisconnected - "

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->access$000(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->access$102(Lcom/bst/spamcall/numbermark/b;)Lcom/bst/spamcall/numbermark/b;

    return-void
.end method
