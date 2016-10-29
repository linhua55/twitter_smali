.class public Lcom/twitter/android/jq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/js;


# instance fields
.field public final a:J

.field public final b:Lcom/twitter/model/core/Tweet;

.field public final c:Lcom/twitter/model/core/MediaEntity;

.field public d:Lclw;


# direct methods
.method constructor <init>(JLcom/twitter/model/core/Tweet;Lclw;)V
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p3}, Lcom/twitter/model/core/Tweet;->Q()Lcom/twitter/model/core/MediaEntity;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/jq;-><init>(JLcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;)V

    .line 261
    iput-object p4, p0, Lcom/twitter/android/jq;->d:Lclw;

    .line 262
    return-void
.end method

.method constructor <init>(JLcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;)V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-wide p1, p0, Lcom/twitter/android/jq;->a:J

    .line 255
    iput-object p3, p0, Lcom/twitter/android/jq;->b:Lcom/twitter/model/core/Tweet;

    .line 256
    iput-object p4, p0, Lcom/twitter/android/jq;->c:Lcom/twitter/model/core/MediaEntity;

    .line 257
    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/twitter/android/jq;->d:Lclw;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/twitter/android/jq;->d:Lclw;

    invoke-virtual {v0}, Lclw;->r()Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_1

    .line 268
    iget-object v1, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v1, v1, Lcom/twitter/model/card/property/Vector2F;->x:F

    iget-object v0, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v0, v0, Lcom/twitter/model/card/property/Vector2F;->y:F

    invoke-static {v1, v0}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->g()F

    move-result v0

    .line 274
    :goto_0
    return v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/jq;->c:Lcom/twitter/model/core/MediaEntity;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/twitter/android/jq;->c:Lcom/twitter/model/core/MediaEntity;

    iget-object v0, v0, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->g()F

    move-result v0

    goto :goto_0

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/twitter/media/request/b;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/twitter/android/jq;->d:Lclw;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/twitter/android/jq;->d:Lclw;

    invoke-static {v0}, Lcom/twitter/library/media/util/p;->a(Lclw;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/jq;->c:Lcom/twitter/model/core/MediaEntity;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/twitter/android/jq;->c:Lcom/twitter/model/core/MediaEntity;

    invoke-static {v0}, Lcom/twitter/library/media/util/p;->a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/media/request/b;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/twitter/android/jq;->a:J

    return-wide v0
.end method

.method public d()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/twitter/android/jq;->b:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public e()Lcom/twitter/model/core/MediaEntity;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/twitter/android/jq;->c:Lcom/twitter/model/core/MediaEntity;

    return-object v0
.end method
