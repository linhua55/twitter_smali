.class final Lcom/twitter/util/serialization/p;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<[D>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/serialization/p;->a(Lcom/twitter/util/serialization/ak;[D)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;[D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    array-length v0, p2

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 297
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p2, v0

    .line 298
    invoke-virtual {p1, v2, v3}, Lcom/twitter/util/serialization/ak;->b(D)Lcom/twitter/util/serialization/ak;

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;I)[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    .line 307
    new-array v2, v1, [D

    .line 308
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 309
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->h()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-object v2
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
    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/serialization/p;->a(Lcom/twitter/util/serialization/aj;I)[D

    move-result-object v0

    return-object v0
.end method
