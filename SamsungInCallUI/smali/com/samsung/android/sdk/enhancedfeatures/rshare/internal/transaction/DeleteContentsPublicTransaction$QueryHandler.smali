.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->handleMessage(Landroid/os/Message;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12

    const/4 v6, 0x0

    const/16 v5, -0x2f

    const/4 v4, 0x0

    const/16 v3, 0x191

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###onQueryComplete "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    const-string v2, "folder_token"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    const-string v2, "ors_region_url"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mDeletePathsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;)Z

    move-result v9

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v10

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v11

    move-object v6, v4

    invoke-static/range {v0 .. v11}, Lcom/samsung/android/sdk/ssf/file/FileManager;->deleteFile(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folder Token is null for the group ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    const-string v1, "No folderToken in DB"

    invoke-static {v0, v3, v5, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cursor is null for groupID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    const/16 v1, -0x30

    const-string v2, "No groupID in DB"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;IILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    const-string v1, "folder_token"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folder Token is null for the group ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    const-string v1, "No folderToken in DB"

    invoke-static {v0, v3, v5, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;IILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
