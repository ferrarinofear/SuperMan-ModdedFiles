.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;


# instance fields
.field protected expr_time:J

.field protected rsrc_tkn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;->expr_time:J

    return-wide v0
.end method

.method public getResourceToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;->rsrc_tkn:Ljava/lang/String;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;->expr_time:J

    return-void
.end method

.method public setResourceToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetResourceTokenResponse;->rsrc_tkn:Ljava/lang/String;

    return-void
.end method
