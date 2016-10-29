.class Lcom/twitter/model/av/r;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/av/o;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/av/p;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/twitter/model/av/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/av/o;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    .line 322
    sget-object v1, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    .line 323
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->d(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;

    move-result-object v1

    .line 324
    sget-object v2, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    .line 325
    invoke-static {p1, v2}, Lcom/twitter/util/collection/e;->d(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;

    move-result-object v2

    .line 326
    sget-object v3, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v3}, Lcom/twitter/util/collection/e;->d(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;

    move-result-object v3

    .line 328
    sget-object v4, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    .line 329
    invoke-static {p1, v4}, Lcom/twitter/util/collection/e;->d(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;

    move-result-object v4

    .line 330
    sget-object v5, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v5}, Lcom/twitter/util/collection/e;->d(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;

    move-result-object v5

    .line 333
    new-instance v6, Lcom/twitter/model/av/q;

    invoke-direct {v6}, Lcom/twitter/model/av/q;-><init>()V

    .line 334
    invoke-virtual {v6, v0}, Lcom/twitter/model/av/q;->a(Z)Lcom/twitter/model/av/q;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v1}, Lcom/twitter/model/av/q;->a(Ljava/util/Collection;)Lcom/twitter/model/av/q;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v2}, Lcom/twitter/model/av/q;->b(Ljava/util/Collection;)Lcom/twitter/model/av/q;

    move-result-object v0

    .line 337
    invoke-virtual {v0, v3}, Lcom/twitter/model/av/q;->c(Ljava/util/Collection;)Lcom/twitter/model/av/q;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v4}, Lcom/twitter/model/av/q;->d(Ljava/util/Collection;)Lcom/twitter/model/av/q;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v5}, Lcom/twitter/model/av/q;->e(Ljava/util/Collection;)Lcom/twitter/model/av/q;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/twitter/model/av/q;->c()Lcom/twitter/model/av/o;

    move-result-object v0

    .line 333
    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/av/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p2}, Lcom/twitter/model/av/o;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 307
    invoke-virtual {p2}, Lcom/twitter/model/av/o;->b()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V

    .line 309
    invoke-virtual {p2}, Lcom/twitter/model/av/o;->c()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V

    .line 310
    invoke-virtual {p2}, Lcom/twitter/model/av/o;->d()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V

    .line 312
    invoke-virtual {p2}, Lcom/twitter/model/av/o;->e()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V

    .line 313
    invoke-virtual {p2}, Lcom/twitter/model/av/o;->f()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V

    .line 315
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    check-cast p2, Lcom/twitter/model/av/o;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/av/r;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/av/o;)V

    return-void
.end method

.method protected synthetic b(Lcom/twitter/util/serialization/aj;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/av/r;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/av/o;

    move-result-object v0

    return-object v0
.end method
