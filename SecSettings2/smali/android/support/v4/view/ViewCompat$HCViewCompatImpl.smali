.class Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HCViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public combineMeasuredStates(II)I
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getAlpha(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method getFrameTime()J
    .locals 2

    invoke-static {}, Landroid/support/v4/view/ViewCompatHC;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getScaleX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getTranslationX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getTranslationY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->offsetTopAndBottom(Landroid/view/View;I)V

    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatHC;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatHC;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setScaleX(Landroid/view/View;F)V

    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method
