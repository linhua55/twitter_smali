.class abstract Lcom/twitter/model/dms/ar;
.super Lcom/twitter/model/dms/k;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/ap;",
        "B:",
        "Lcom/twitter/model/dms/aq",
        "<TE;TB;>;>",
        "Lcom/twitter/model/dms/k",
        "<TE;TB;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/twitter/model/dms/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/aq;I)V
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
    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/model/dms/k;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/j;I)V

    .line 108
    sget-object v0, Lclw;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclw;

    .line 109
    invoke-virtual {p2, v0}, Lcom/twitter/model/dms/aq;->a(Lclw;)Lcom/twitter/model/dms/aq;

    .line 110
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 96
    check-cast p2, Lcom/twitter/model/dms/aq;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/ar;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/aq;I)V

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
    .line 96
    check-cast p2, Lcom/twitter/model/dms/aq;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/ar;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/aq;I)V

    return-void
.end method

.method public a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/ap;)V
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
    .line 100
    invoke-super {p0, p1, p2}, Lcom/twitter/model/dms/k;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/i;)V

    .line 101
    iget-object v0, p2, Lcom/twitter/model/dms/ap;->c:Lclw;

    sget-object v1, Lclw;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 102
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    check-cast p2, Lcom/twitter/model/dms/ap;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/ar;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/ap;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    check-cast p2, Lcom/twitter/model/dms/ap;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/ar;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/ap;)V

    return-void
.end method
