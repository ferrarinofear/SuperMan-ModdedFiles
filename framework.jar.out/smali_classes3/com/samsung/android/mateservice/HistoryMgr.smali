.class Lcom/samsung/android/mateservice/HistoryMgr;
.super Ljava/lang/Object;
.source "HistoryMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;
    }
.end annotation


# static fields
.field private static final TIME_DIFF:J = 0x4e94914f0000L


# instance fields
.field private mLastTimeStamp:J

.field private final mNodes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mLastTimeStamp:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    iput p1, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mSize:I

    return-void
.end method

.method private appendHistoryNode(Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mateservice/HistoryMgr;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mLastTimeStamp:J

    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v4, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mSize:I

    if-lt v2, v4, :cond_0

    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isExpired(J)Z
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mLastTimeStamp:J

    sub-long v0, p1, v0

    const-wide v2, 0x4e94914f0000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method varargs append(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    new-instance v0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;

    invoke-direct {v0, p3, p1, p2}, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;-><init>(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/samsung/android/mateservice/HistoryMgr;->appendHistoryNode(Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;)V

    return-void
.end method

.method varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;

    invoke-direct {v0, p1}, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/mateservice/HistoryMgr;->appendHistoryNode(Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;)V

    return-void
.end method

.method getDump(Ljava/lang/StringBuilder;)V
    .locals 6

    const-string/jumbo v2, "\n---- history info.\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;

    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;->timeStamp:J

    invoke-static {v4, v5}, Lcom/samsung/android/mateservice/MateLog;->getDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;->msg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/mateservice/FwDependency;->isProductDev()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
