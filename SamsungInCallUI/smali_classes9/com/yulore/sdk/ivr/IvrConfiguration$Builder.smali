.class public Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;
.super Ljava/lang/Object;
.source "IvrConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/IvrConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private apiKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private ivrFileDir:Ljava/io/File;

.field private offlinePacketDir:Ljava/io/File;

.field private secret:Ljava/lang/String;

.field private updateIntervalByHour:I

.field private updateNetworkStrategy:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->context:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->secret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->ivrFileDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->offlinePacketDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    .prologue
    .line 82
    iget v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->updateIntervalByHour:I

    return v0
.end method

.method static synthetic access$600(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->updateNetworkStrategy:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    return-object v0
.end method


# virtual methods
.method public apiKey(Ljava/lang/String;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->apiKey:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public create()Lcom/yulore/sdk/ivr/IvrConfiguration;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/yulore/sdk/ivr/IvrConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yulore/sdk/ivr/IvrConfiguration;-><init>(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;Lcom/yulore/sdk/ivr/IvrConfiguration$1;)V

    return-object v0
.end method

.method public ivrFileDir(Ljava/io/File;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;
    .locals 0
    .param p1, "ivrFileDir"    # Ljava/io/File;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->ivrFileDir:Ljava/io/File;

    .line 107
    return-object p0
.end method

.method public offlinePacketDir(Ljava/io/File;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;
    .locals 0
    .param p1, "offlinePacketDir"    # Ljava/io/File;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->offlinePacketDir:Ljava/io/File;

    .line 112
    return-object p0
.end method

.method public secret(Ljava/lang/String;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;
    .locals 0
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->secret:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public updateIntervalByHour(I)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;
    .locals 0
    .param p1, "updateIntervalByHour"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->updateIntervalByHour:I

    .line 117
    return-object p0
.end method

.method public updateNetworkStrategy(Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;)Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;
    .locals 0
    .param p1, "updateNetworkStrategy"    # Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->updateNetworkStrategy:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    .line 122
    return-object p0
.end method