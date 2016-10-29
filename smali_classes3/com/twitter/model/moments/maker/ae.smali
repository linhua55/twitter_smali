.class public abstract Lcom/twitter/model/moments/maker/ae;
.super Lcom/twitter/model/moments/maker/aq;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/moments/maker/ac;",
        "B:",
        "Lcom/twitter/model/moments/maker/ad",
        "<TT;TB;>;>",
        "Lcom/twitter/model/moments/maker/aq",
        "<TT;TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/aq;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/ad;I)V
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
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/model/moments/maker/aq;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/ap;I)V

    .line 40
    sget-object v0, Lcom/twitter/model/moments/maker/aj;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/aj;

    invoke-virtual {p2, v0}, Lcom/twitter/model/moments/maker/ad;->a(Lcom/twitter/model/moments/maker/aj;)Lcom/twitter/model/moments/maker/ad;

    .line 41
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/ap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p2, Lcom/twitter/model/moments/maker/ad;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/moments/maker/ae;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/ad;I)V

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
    .line 27
    check-cast p2, Lcom/twitter/model/moments/maker/ad;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/moments/maker/ae;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/ad;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/twitter/model/moments/maker/aq;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/ao;)V

    .line 33
    iget-object v0, p2, Lcom/twitter/model/moments/maker/ac;->b:Lcom/twitter/model/moments/maker/aj;

    sget-object v1, Lcom/twitter/model/moments/maker/aj;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 34
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/ao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p2, Lcom/twitter/model/moments/maker/ac;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/maker/ae;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/ac;)V

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
    .line 27
    check-cast p2, Lcom/twitter/model/moments/maker/ac;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/maker/ae;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/ac;)V

    return-void
.end method
