.class public final enum Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

.field public static final enum CUSTOM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

.field public static final enum MEDIA:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

.field public static final enum TEXT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->TEXT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->MEDIA:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->TEXT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->MEDIA:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->TEXT:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->MEDIA:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->CUSTOM:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->$VALUES:[Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatInfo$Type;->value:I

    return v0
.end method
