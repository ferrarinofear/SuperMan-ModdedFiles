.class final synthetic Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;
.super Ljava/lang/Object;
.source "NotificationActionListLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationActionListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__clinit___LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->-com_android_internal_widget_NotificationActionListLayout_lambda$1(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
