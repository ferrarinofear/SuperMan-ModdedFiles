.class final Lcom/a/a/d/b/a/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/b/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/b/a/i$b;

.field private b:I

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/a/i$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/b/a/i$a;->a:Lcom/a/a/d/b/a/i$b;

    return-void
.end method

.method static synthetic a(Lcom/a/a/d/b/a/i$a;)I
    .locals 1

    iget v0, p0, Lcom/a/a/d/b/a/i$a;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/b/a/i$a;->a:Lcom/a/a/d/b/a/i$b;

    invoke-virtual {v0, p0}, Lcom/a/a/d/b/a/i$b;->a(Lcom/a/a/d/b/a/h;)V

    return-void
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    iput p1, p0, Lcom/a/a/d/b/a/i$a;->b:I

    iput-object p2, p0, Lcom/a/a/d/b/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/a/d/b/a/i$a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/a/a/d/b/a/i$a;

    iget v1, p0, Lcom/a/a/d/b/a/i$a;->b:I

    iget v2, p1, Lcom/a/a/d/b/a/i$a;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/d/b/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/a/a/d/b/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/d/b/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/a/a/d/b/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/a/a/d/b/a/i$a;->b:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/a/a/d/b/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/a/a/d/b/a/i$a;->b:I

    iget-object v1, p0, Lcom/a/a/d/b/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/a/a/d/b/a/i;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
