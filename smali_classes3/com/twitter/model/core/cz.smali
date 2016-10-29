.class public abstract Lcom/twitter/model/core/cz;
.super Lcom/twitter/model/core/g;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/core/cx;",
        "B:",
        "Lcom/twitter/model/core/cy",
        "<TE;TB;>;>",
        "Lcom/twitter/model/core/g",
        "<TE;TB;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/model/core/g;-><init>(I)V

    .line 175
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/cy;I)V
    .locals 2
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
    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/model/core/g;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/f;I)V

    .line 191
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/core/cy;->e(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cy;->f(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cy;->g(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cy;->d(I)Lcom/twitter/model/core/cy;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cy;->e(I)Lcom/twitter/model/core/cy;

    .line 196
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/f;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 171
    check-cast p2, Lcom/twitter/model/core/cy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/cz;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/cy;I)V

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
    .line 171
    check-cast p2, Lcom/twitter/model/core/cy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/cz;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/cy;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/cx;)V
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
    .line 179
    invoke-super {p0, p1, p2}, Lcom/twitter/model/core/g;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/e;)V

    .line 180
    iget-object v0, p2, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/cx;->G:I

    .line 183
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/cx;->H:I

    .line 184
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 185
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    check-cast p2, Lcom/twitter/model/core/cx;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/cz;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/cx;)V

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
    .line 171
    check-cast p2, Lcom/twitter/model/core/cx;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/cz;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/cx;)V

    return-void
.end method
