.class public Lcom/twitter/library/av/playback/bm;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/core/Tweet;)I
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x2

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    const/4 v0, 0x3

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->al()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    const/4 v0, 0x5

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->y(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    const/4 v0, 0x4

    goto :goto_0

    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->am()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    const/4 v0, 0x6

    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->an()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 95
    const/4 v0, 0x7

    goto :goto_0

    .line 97
    :cond_7
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;)J
    .locals 4

    .prologue
    .line 695
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/twitter/model/core/MediaEntity;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 696
    iget-wide v0, p1, Lcom/twitter/model/core/MediaEntity;->j:J

    .line 698
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->o:J

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/core/Tweet;I)Lcom/twitter/util/math/Size;
    .locals 2

    .prologue
    .line 465
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 466
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->o(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    invoke-virtual {v0}, Lcom/twitter/model/card/property/Vector2F;->b()Lcom/twitter/util/math/Size;

    move-result-object v0

    .line 468
    :goto_1
    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    :goto_2
    return-object v0

    .line 465
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    :cond_1
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    goto :goto_1

    .line 471
    :cond_2
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->p(Lcom/twitter/model/core/Tweet;)F

    move-result v0

    .line 472
    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v0

    goto :goto_2
.end method

.method private static a(F)Ljava/lang/String;
    .locals 2

    .prologue
    .line 551
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    .line 552
    invoke-static {v0, v1}, Lcom/twitter/util/al;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/core/MediaEntity;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/MediaEntity;->o:Lcom/twitter/model/core/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/MediaEntity;->o:Lcom/twitter/model/core/ap;

    iget-object v0, v0, Lcom/twitter/model/core/ap;->d:Ljava/util/List;

    .line 253
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/MediaEntity;->o:Lcom/twitter/model/core/ap;

    iget-object v0, v0, Lcom/twitter/model/core/ap;->d:Ljava/util/List;

    const/4 v1, 0x0

    .line 254
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/as;

    iget-object v0, v0, Lcom/twitter/model/core/as;->c:Ljava/lang/String;

    .line 252
    :goto_0
    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/twitter/model/core/MediaEntity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->c(Lcom/twitter/model/core/MediaEntity;)F

    move-result v0

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->a(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/twitter/model/core/Tweet;)Z
    .locals 2

    .prologue
    .line 104
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v0

    .line 105
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/twitter/model/core/MediaEntity;)F
    .locals 1

    .prologue
    .line 556
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcug;->c(Lcom/twitter/model/core/MediaEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/twitter/model/core/MediaEntity;->o:Lcom/twitter/model/core/ap;

    iget v0, v0, Lcom/twitter/model/core/ap;->c:F

    .line 559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Lcih;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 121
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->M()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lcom/twitter/model/core/Tweet;)Z
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Lcom/twitter/model/core/Tweet;)Lbwl;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 154
    if-eqz p0, :cond_0

    .line 155
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v1

    .line 156
    packed-switch v1, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->e(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v1

    .line 159
    invoke-static {p0}, Lcom/twitter/library/media/util/ab;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "gif_caching_enabled"

    .line 160
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    :cond_1
    new-instance v0, Lbwn;

    invoke-direct {v0, v1}, Lbwn;-><init>(Lcom/twitter/model/core/MediaEntity;)V

    goto :goto_0

    .line 163
    :cond_2
    new-instance v0, Lbwu;

    invoke-direct {v0, v1}, Lbwu;-><init>(Lcom/twitter/model/core/MediaEntity;)V

    goto :goto_0

    .line 168
    :pswitch_1
    new-instance v0, Lbwu;

    .line 169
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcug;->d(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lbwu;-><init>(Lcom/twitter/model/core/MediaEntity;)V

    goto :goto_0

    .line 172
    :pswitch_2
    new-instance v0, Lbwr;

    invoke-direct {v0}, Lbwr;-><init>()V

    goto :goto_0

    .line 175
    :pswitch_3
    new-instance v0, Lbwy;

    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->g(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->s(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/model/core/Tweet;->b:J

    invoke-direct {v0, v1, v2, v4, v5}, Lbwy;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 178
    :pswitch_4
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    goto :goto_0

    .line 181
    :pswitch_5
    new-instance v0, Lbwq;

    invoke-direct {v0}, Lbwq;-><init>()V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static g(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 201
    if-eqz p0, :cond_0

    .line 202
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v1

    .line 203
    packed-switch v1, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 205
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->e(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/MediaEntity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->d(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/MediaEntity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->j(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :pswitch_4
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->i(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_5
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->h(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :pswitch_6
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->k(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static h(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lclw;->n()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static i(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lclw;->o()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lclw;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static k(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Lcom/twitter/model/core/Tweet;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v0

    .line 310
    packed-switch v0, :pswitch_data_0

    .line 340
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 312
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 314
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v3

    .line 315
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->k(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->o(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v5

    .line 317
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->n(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/av/Partner;

    move-result-object v6

    .line 318
    if-eqz v3, :cond_6

    const-string/jumbo v2, "title"

    invoke-virtual {v3, v2}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    :goto_1
    if-eqz v3, :cond_1

    const-string/jumbo v1, "artist_name"

    invoke-virtual {v3, v1}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    :cond_1
    if-eqz v4, :cond_2

    .line 322
    const-string/jumbo v3, "playlist_url"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_2
    if-eqz v5, :cond_3

    iget-object v3, v5, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 325
    const-string/jumbo v3, "image_url"

    iget-object v4, v5, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_3
    if-eqz v2, :cond_4

    .line 328
    const-string/jumbo v3, "card_title"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_4
    if-eqz v1, :cond_5

    .line 331
    const-string/jumbo v2, "artist_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_5
    sget-object v1, Lcom/twitter/model/av/Partner;->a:Lcom/twitter/model/av/Partner;

    if-eq v6, v1, :cond_0

    .line 334
    const-string/jumbo v1, "integration_partner"

    invoke-virtual {v6}, Lcom/twitter/model/av/Partner;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    move-object v2, v1

    .line 318
    goto :goto_1

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Lcom/twitter/model/core/Tweet;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 356
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v2

    .line 357
    packed-switch v2, :pswitch_data_0

    .line 373
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v0

    .line 361
    :pswitch_1
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->u(Lcom/twitter/model/core/Tweet;)J

    move-result-wide v0

    goto :goto_0

    .line 367
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v2

    .line 368
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lclw;->h()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    .line 369
    :goto_1
    if-eqz v2, :cond_0

    iget-wide v0, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    goto :goto_0

    .line 368
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static n(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/av/Partner;
    .locals 2

    .prologue
    .line 387
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v0

    .line 388
    packed-switch v0, :pswitch_data_0

    .line 395
    sget-object v0, Lcom/twitter/model/av/Partner;->a:Lcom/twitter/model/av/Partner;

    :goto_0
    return-object v0

    .line 390
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 391
    const-string/jumbo v1, "partner"

    invoke-virtual {v0, v1}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_0

    new-instance v0, Lcom/twitter/model/av/Partner;

    invoke-direct {v0, v1}, Lcom/twitter/model/av/Partner;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/twitter/model/av/Partner;->a:Lcom/twitter/model/av/Partner;

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static o(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/card/property/ImageSpec;
    .locals 4

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v1

    .line 411
    packed-switch v1, :pswitch_data_0

    .line 445
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 416
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v1

    .line 417
    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v1}, Lclw;->r()Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v0

    goto :goto_0

    .line 427
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v2

    .line 428
    if-eqz v1, :cond_1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    .line 429
    :cond_1
    invoke-static {v2}, Lcug;->d(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v1

    .line 434
    :goto_1
    if-eqz v1, :cond_0

    .line 435
    new-instance v0, Lcom/twitter/model/card/property/ImageSpec;

    invoke-direct {v0}, Lcom/twitter/model/card/property/ImageSpec;-><init>()V

    .line 436
    iget-object v2, v1, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    iput-object v2, v0, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    .line 437
    new-instance v2, Lcom/twitter/model/card/property/Vector2F;

    iget-object v3, v1, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    invoke-virtual {v3}, Lcom/twitter/util/math/Size;->a()I

    move-result v3

    int-to-float v3, v3

    iget-object v1, v1, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v2, v3, v1}, Lcom/twitter/model/card/property/Vector2F;-><init>(FF)V

    iput-object v2, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    goto :goto_0

    .line 431
    :cond_2
    invoke-static {v2}, Lcug;->e(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v1

    goto :goto_1

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static p(Lcom/twitter/model/core/Tweet;)F
    .locals 3

    .prologue
    const v0, 0x3fe38e39

    const/high16 v1, 0x3f800000    # 1.0f

    .line 484
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v2

    .line 485
    packed-switch v2, :pswitch_data_0

    .line 514
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 491
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 494
    goto :goto_0

    .line 499
    :pswitch_3
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v1

    .line 500
    invoke-static {v1}, Lcug;->c(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    invoke-virtual {v2}, Lcom/twitter/util/math/Size;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    iget-object v0, v1, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->g()F

    move-result v0

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static q(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->d(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v1

    .line 530
    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->c(Lcom/twitter/model/core/MediaEntity;)F

    move-result v0

    .line 531
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    if-eqz v1, :cond_0

    .line 533
    const-string/jumbo v2, "content_duration_seconds"

    invoke-virtual {v1, v2}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    if-eqz v1, :cond_1

    .line 536
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 541
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->a(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 536
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 537
    :catch_0
    move-exception v1

    .line 538
    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static r(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v0

    .line 565
    packed-switch v0, :pswitch_data_0

    .line 599
    :cond_0
    :pswitch_0
    const-string/jumbo v0, ""

    :cond_1
    :goto_0
    return-object v0

    .line 567
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->e(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_2

    .line 569
    iget-object v0, v0, Lcom/twitter/model/core/MediaEntity;->E:Ljava/lang/String;

    goto :goto_0

    .line 575
    :cond_2
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->d(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_3

    .line 577
    iget-wide v0, v0, Lcom/twitter/model/core/MediaEntity;->c:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 582
    :cond_3
    :pswitch_3
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_4

    .line 584
    invoke-virtual {v0}, Lclw;->p()Ljava/lang/String;

    move-result-object v0

    .line 585
    if-nez v0, :cond_1

    .line 592
    :cond_4
    :pswitch_4
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->s(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_0

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static s(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->T()Ljava/lang/Iterable;

    move-result-object v0

    .line 612
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 613
    iget-object v0, v0, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    .line 614
    invoke-static {v0}, Lcom/twitter/library/util/an;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 623
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v0

    .line 624
    packed-switch v0, :pswitch_data_0

    .line 651
    :pswitch_0
    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    .line 628
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->c(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_1

    .line 630
    iget-object v0, v0, Lcom/twitter/model/core/MediaEntity;->E:Ljava/lang/String;

    goto :goto_0

    .line 635
    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v1

    .line 636
    const/4 v0, 0x0

    .line 637
    if-eqz v1, :cond_2

    .line 638
    invoke-virtual {v1}, Lclw;->k()Ljava/lang/String;

    move-result-object v0

    .line 640
    :cond_2
    if-nez v0, :cond_0

    .line 641
    const-string/jumbo v0, ""

    goto :goto_0

    .line 648
    :pswitch_3
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->r(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static u(Lcom/twitter/model/core/Tweet;)J
    .locals 2

    .prologue
    .line 657
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v0

    .line 658
    packed-switch v0, :pswitch_data_0

    .line 683
    :pswitch_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 660
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->e(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 661
    invoke-static {p0, v0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;)J

    move-result-wide v0

    goto :goto_0

    .line 665
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->d(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 666
    invoke-static {p0, v0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;)J

    move-result-wide v0

    goto :goto_0

    .line 669
    :pswitch_3
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Lclw;->h()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v0

    goto :goto_0

    .line 680
    :cond_0
    :pswitch_4
    iget-wide v0, p0, Lcom/twitter/model/core/Tweet;->o:J

    goto :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static v(Lcom/twitter/model/core/Tweet;)I
    .locals 1

    .prologue
    .line 704
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;)I

    move-result v0

    .line 705
    packed-switch v0, :pswitch_data_0

    .line 722
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 707
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 710
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 713
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 716
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 719
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static w(Lcom/twitter/model/core/Tweet;)Lcom/twitter/media/request/b;
    .locals 1

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->c(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_3

    .line 732
    invoke-static {v0}, Lcom/twitter/library/media/util/p;->a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 742
    :goto_0
    return-object v0

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->am()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->al()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_3

    .line 737
    invoke-static {v0}, Lcom/twitter/library/media/util/p;->a(Lclw;)Lcom/twitter/media/request/b;

    move-result-object v0

    goto :goto_0

    .line 739
    :cond_2
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->y(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/media/util/p;->a(Lclw;)Lcom/twitter/media/request/b;

    move-result-object v0

    goto :goto_0

    .line 742
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static x(Lcom/twitter/model/core/Tweet;)J
    .locals 2

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->d(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    .line 753
    if-eqz v0, :cond_0

    .line 754
    iget-object v1, v0, Lcom/twitter/model/core/MediaEntity;->z:Lcom/twitter/model/core/aj;

    if-eqz v1, :cond_0

    .line 755
    iget-object v0, v0, Lcom/twitter/model/core/MediaEntity;->z:Lcom/twitter/model/core/aj;

    iget-wide v0, v0, Lcom/twitter/model/core/aj;->b:J

    .line 758
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static y(Lcom/twitter/model/core/Tweet;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v1

    .line 126
    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    const-string/jumbo v2, "appplayer"

    invoke-virtual {v1}, Lclw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 130
    const-string/jumbo v3, "promo_video_convo"

    invoke-virtual {v1}, Lclw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 131
    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->h(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
