.class public final Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForwardOnlineMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    }
.end annotation


# static fields
.field public static final CHATROOMID_FIELD_NUMBER:I = 0xc

.field public static final CHATTYPE_FIELD_NUMBER:I = 0xd

.field public static final CURRENTTIMESTAMP_FIELD_NUMBER:I = 0x10

.field public static final DEVICEID_FIELD_NUMBER:I = 0x2

.field public static final INBOXENTRY_FIELD_NUMBER:I = 0xe

.field public static final ISACTIVEFORWARD_FIELD_NUMBER:I = 0xf

.field public static final REQUESTID_FIELD_NUMBER:I = 0xb

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field private chatroomId_:J

.field private currentTimestamp_:J

.field private deviceId_:J

.field private inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

.field private isActiveForward_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestId_:J

.field private userId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;-><init>(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->memoizedIsInitialized:B

    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$24102(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->userId_:J

    return-wide p1
.end method

.method static synthetic access$24202(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->deviceId_:J

    return-wide p1
.end method

.method static synthetic access$24302(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->requestId_:J

    return-wide p1
.end method

.method static synthetic access$24402(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->chatroomId_:J

    return-wide p1
.end method

.method static synthetic access$24502(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object p1
.end method

.method static synthetic access$24602(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    return-object p1
.end method

.method static synthetic access$24702(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->isActiveForward_:Z

    return p1
.end method

.method static synthetic access$24802(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->currentTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$24902(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->userId_:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->deviceId_:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->requestId_:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->chatroomId_:J

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getDefaultInstance()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->isActiveForward_:Z

    iput-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->currentTimestamp_:J

    return-void
.end method

.method public static newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23900()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;->access$23800(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object v0
.end method

.method public getChatroomId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->chatroomId_:J

    return-wide v0
.end method

.method public getCurrentTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->currentTimestamp_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->defaultInstance:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->deviceId_:J

    return-wide v0
.end method

.method public getInboxEntry()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    return-object v0
.end method

.method public getIsActiveForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->isActiveForward_:Z

    return v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->requestId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->userId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->deviceId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->requestId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->chatroomId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->isActiveForward_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->currentTimestamp_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iput v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->userId_:J

    return-wide v0
.end method

.method public hasChatType()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChatroomId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCurrentTimestamp()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

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

.method public hasInboxEntry()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsActiveForward()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestId()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->newBuilder(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage$Builder;

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
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->getSerializedSize()I

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->userId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->deviceId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->requestId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/16 v0, 0xc

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->chatroomId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v4, :cond_4

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->chatType_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_4
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->inboxEntry_:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_5
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->isActiveForward_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_6
    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ForwardOnlineMessage;->currentTimestamp_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_7
    return-void
.end method
