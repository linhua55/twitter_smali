.class public Lcom/twitter/library/media/util/p;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lclw;)Lcom/twitter/media/request/b;
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lclw;->r()Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v2, v2, Lcom/twitter/model/card/property/Vector2F;->x:F

    iget-object v0, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v0, v0, Lcom/twitter/model/card/property/Vector2F;->y:F

    .line 40
    invoke-static {v2, v0}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/media/request/b;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    .line 26
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/media/util/TweetImageVariant;->e:Lcom/twitter/media/request/d;

    .line 27
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/d;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static a(Lcom/twitter/model/dms/bk;)Lcom/twitter/media/request/b;
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/twitter/model/dms/bk;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/model/dms/bk;->k()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/model/dms/bk;->l()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;II)Lcom/twitter/media/request/b;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/media/util/TweetImageVariant;->e:Lcom/twitter/media/request/d;

    .line 33
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/d;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 32
    return-object v0
.end method
