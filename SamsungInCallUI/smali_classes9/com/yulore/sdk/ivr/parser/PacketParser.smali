.class public Lcom/yulore/sdk/ivr/parser/PacketParser;
.super Lcom/yulore/android/common/parser/BaseParser;
.source "PacketParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yulore/android/common/parser/BaseParser",
        "<",
        "Lcom/yulore/sdk/ivr/model/IvrPkgInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yulore/android/common/parser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJSON(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    const-string v3, "YuloreIVR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " new analytical json = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "rootJson":Lorg/json/JSONObject;
    new-instance v0, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;-><init>()V

    .line 32
    .local v0, "info":Lcom/yulore/sdk/ivr/model/IvrPkgInfo;
    if-eqz v1, :cond_0

    .line 33
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->setVersion(I)V

    .line 39
    :cond_3
    const-string v2, "s_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    const-string v2, "s_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->setS_version(I)V

    .line 42
    :cond_4
    const-string v2, "pkg_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    const-string v2, "pkg_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->setUpdateUrl(Ljava/lang/String;)V

    .line 45
    :cond_5
    const-string v2, "sign"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "sign"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yulore/sdk/ivr/model/IvrPkgInfo;->setSign(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic parseJSON(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/parser/PacketParser;->parseJSON(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/IvrPkgInfo;

    move-result-object v0

    return-object v0
.end method