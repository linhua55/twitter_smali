.class public Lcom/twitter/android/moments/data/u;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/core/Tweet;JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/twitter/model/core/ac;->a(J)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    iget-object p3, v0, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    .line 25
    :cond_0
    :goto_0
    return-object p3

    .line 21
    :cond_1
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->o(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    iget-object p3, v0, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    goto :goto_0
.end method
