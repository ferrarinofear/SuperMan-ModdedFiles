.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUserOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DIDViolationUser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;
    }
.end annotation


# static fields
.field public static final USERA_FIELD_NUMBER:I = 0x1

.field public static final USERB_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private userA_:J

.field private userB_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->userA_:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->userB_:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->userA_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->userB_:J

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$100()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;->access$000(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->userA_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->userB_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getUserA()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->userA_:J

    return-wide v0
.end method

.method public getUserB()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->userB_:J

    return-wide v0
.end method

.method public hasUserA()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserB()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->userA_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$DIDViolationUser;->userB_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    return-void
.end method
