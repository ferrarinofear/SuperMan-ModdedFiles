.class public Lcom/samsung/a/a/a/c$d;
.super Lcom/samsung/a/a/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/a/a/a/c$c",
        "<",
        "Lcom/samsung/a/a/a/c$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/a/a/a/c$c;-><init>(Lcom/samsung/a/a/a/c$1;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/a/a/a/c$d;
    .locals 0

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/a/a/a/c$d;->a:Ljava/util/Map;

    const-string v1, "pn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failure to build Log : Screen name cannot be null"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/h/d;->a(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Lcom/samsung/a/a/a/c$c;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "t"

    const-string v1, "pv"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/a/a/a/c$d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/c$c;

    goto :goto_0
.end method

.method public bridge synthetic c()J
    .locals 2

    invoke-super {p0}, Lcom/samsung/a/a/a/c$c;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method protected synthetic d()Lcom/samsung/a/a/a/c$c;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/a/a/a/c$d;->a()Lcom/samsung/a/a/a/c$d;

    move-result-object v0

    return-object v0
.end method
