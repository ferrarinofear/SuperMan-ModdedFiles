.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessedMessageEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;
    }
.end annotation


# static fields
.field public static final MSGID_FIELD_NUMBER:I = 0x1

.field public static final SENTTIME_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private msgId_:J

.field private sentTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$5202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->msgId_:J

    return-wide p1
.end method

.method static synthetic access$5302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->sentTime_:J

    return-wide p1
.end method

.method static synthetic access$5402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->msgId_:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->sentTime_:J

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$5000()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$4900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$4900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$4900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$4900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$4900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$4900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$4900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$4900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$4900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;->access$4900(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->msgId_:J

    return-wide v0
.end method

.method public getSentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->sentTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->msgId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->sentTime_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasMsgId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSentTime()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->bitField0_:I

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

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry$Builder;

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->msgId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProcessedMessageEntry;->sentTime_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    return-void
.end method
