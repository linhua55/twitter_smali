.class Lcom/twitter/model/search/i;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/search/g;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/search/h;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/twitter/model/search/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/search/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v3

    .line 97
    invoke-static {v3}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v4

    move v0, v1

    .line 98
    :goto_0
    if-ge v0, v3, :cond_0

    .line 99
    const/4 v5, 0x2

    new-array v5, v5, [I

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v6

    aput v6, v5, v1

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v7

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    new-instance v1, Lcom/twitter/model/search/g;

    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lcom/twitter/model/search/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/search/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p2, Lcom/twitter/model/search/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/search/g;->c:Ljava/util/List;

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 86
    iget-object v0, p2, Lcom/twitter/model/search/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 87
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    goto :goto_0

    .line 89
    :cond_0
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
    .line 80
    check-cast p2, Lcom/twitter/model/search/g;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/search/i;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/search/g;)V

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
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/search/i;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/search/g;

    move-result-object v0

    return-object v0
.end method
