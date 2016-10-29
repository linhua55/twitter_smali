.class abstract Lcom/twitter/model/dms/k;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/i;",
        "B:",
        "Lcom/twitter/model/dms/j",
        "<TE;TB;>;>",
        "Lcom/twitter/util/serialization/d",
        "<TE;TB;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/j;I)V
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
    .line 165
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/dms/j;->a(Ljava/lang/String;)Lcom/twitter/model/dms/j;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/j;->b(Ljava/lang/String;)Lcom/twitter/model/dms/j;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/j;->c(Ljava/lang/String;)Lcom/twitter/model/dms/j;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/j;->a(I)Lcom/twitter/model/dms/j;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/j;->b(I)Lcom/twitter/model/dms/j;

    .line 170
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
    .line 150
    check-cast p2, Lcom/twitter/model/dms/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/k;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/j;I)V

    return-void
.end method

.method public a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/i;)V
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
    .line 155
    invoke-virtual {p2}, Lcom/twitter/model/dms/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 156
    invoke-virtual {p2}, Lcom/twitter/model/dms/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 157
    invoke-virtual {p2}, Lcom/twitter/model/dms/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 158
    invoke-virtual {p2}, Lcom/twitter/model/dms/i;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 159
    invoke-virtual {p2}, Lcom/twitter/model/dms/i;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 160
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
    .line 150
    check-cast p2, Lcom/twitter/model/dms/i;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/k;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/i;)V

    return-void
.end method
