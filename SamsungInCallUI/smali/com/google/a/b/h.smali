.class final Lcom/google/a/b/h;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/google/a/b/h;->a:I

    return-void
.end method

.method static a(I)I
    .locals 3

    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method static a(ID)I
    .locals 5

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, p1

    double-to-int v2, v2

    if-le v1, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/google/a/b/h;->a:I

    goto :goto_0
.end method

.method static a(Ljava/lang/Object;)I
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/a/b/h;->a(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
