.class Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->onFolderOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

.field final synthetic val$bgAlpha:F

.field final synthetic val$tabContentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->val$tabContentView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->val$bgAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->val$tabContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->val$tabContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->val$tabContentView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->val$bgAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->val$tabContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->val$tabContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->val$tabContentView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;->val$bgAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
