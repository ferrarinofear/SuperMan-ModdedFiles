.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$3;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$3;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;->setRequestToken(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$3;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mResponse:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;->setResponseList(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$3;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;)V

    return-void
.end method
