.class abstract Lcom/twitter/model/dms/br;
.super Lcom/twitter/model/dms/c;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/bo;",
        "B:",
        "Lcom/twitter/model/dms/bq",
        "<TE;TB;>;>",
        "Lcom/twitter/model/dms/c",
        "<",
        "Lcom/twitter/model/dms/bu;",
        "TE;TB;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/twitter/util/serialization/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/bu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/c;-><init>(Lcom/twitter/util/serialization/ah;)V

    .line 230
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/twitter/model/dms/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/bq;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "TB;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/model/dms/c;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/d;I)V

    .line 240
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/dms/bq;->b(Z)Lcom/twitter/model/dms/bq;

    .line 241
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 226
    check-cast p2, Lcom/twitter/model/dms/bq;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/br;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/bq;I)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/object/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 226
    check-cast p2, Lcom/twitter/model/dms/bq;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/br;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/bq;I)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    check-cast p2, Lcom/twitter/model/dms/bo;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/br;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/bo;)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/bo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/twitter/model/dms/c;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/b;)V

    .line 247
    invoke-virtual {p2}, Lcom/twitter/model/dms/bo;->i()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 248
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    check-cast p2, Lcom/twitter/model/dms/bo;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/br;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/bo;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/twitter/model/dms/br;->a()Lcom/twitter/model/dms/bq;

    move-result-object v0

    return-object v0
.end method
