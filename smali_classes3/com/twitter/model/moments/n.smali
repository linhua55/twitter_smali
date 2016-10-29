.class Lcom/twitter/model/moments/n;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/moments/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/util/serialization/ae;-><init>(I)V

    .line 187
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/moments/k;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 204
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 205
    new-instance v0, Lcom/twitter/model/moments/k;

    sget-object v1, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 206
    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/moments/g;

    sget-object v2, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 207
    invoke-virtual {p1, v2}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/g;

    sget-object v3, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 208
    invoke-virtual {p1, v3}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/moments/g;

    sget-object v4, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 209
    invoke-virtual {p1, v4}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/model/moments/g;

    .line 210
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v5

    sget-object v6, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/model/moments/k;-><init>(Lcom/twitter/model/moments/g;Lcom/twitter/model/moments/g;Lcom/twitter/model/moments/g;Lcom/twitter/model/moments/g;ZLcom/twitter/util/math/Size;Lcom/twitter/model/moments/l;)V

    .line 213
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/model/moments/k;

    sget-object v1, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 214
    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/moments/g;

    sget-object v2, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 215
    invoke-virtual {p1, v2}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/g;

    sget-object v3, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 216
    invoke-virtual {p1, v3}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/moments/g;

    sget-object v4, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 217
    invoke-virtual {p1, v4}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/model/moments/g;

    .line 218
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v5

    sget-object v6, Lcom/twitter/util/math/Size;->a:Lcom/twitter/util/serialization/ah;

    .line 219
    invoke-virtual {p1, v6}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/util/math/Size;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/model/moments/k;-><init>(Lcom/twitter/model/moments/g;Lcom/twitter/model/moments/g;Lcom/twitter/model/moments/g;Lcom/twitter/model/moments/g;ZLcom/twitter/util/math/Size;Lcom/twitter/model/moments/l;)V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p2, Lcom/twitter/model/moments/k;->c:Lcom/twitter/model/moments/g;

    sget-object v1, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/k;->d:Lcom/twitter/model/moments/g;

    sget-object v2, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/k;->e:Lcom/twitter/model/moments/g;

    sget-object v2, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/k;->f:Lcom/twitter/model/moments/g;

    sget-object v2, Lcom/twitter/model/moments/g;->a:Lcom/twitter/util/serialization/ah;

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/moments/k;->h:Z

    .line 196
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/k;->g:Lcom/twitter/util/math/Size;

    sget-object v2, Lcom/twitter/util/math/Size;->a:Lcom/twitter/util/serialization/ah;

    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 198
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
    .line 183
    check-cast p2, Lcom/twitter/model/moments/k;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/n;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/k;)V

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
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/n;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/moments/k;

    move-result-object v0

    return-object v0
.end method
