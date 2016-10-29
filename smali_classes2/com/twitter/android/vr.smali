.class public Lcom/twitter/android/vr;
.super Lcom/twitter/android/am;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/am",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ltr;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/twitter/android/am;-><init>(Ltr;)V

    .line 22
    return-void
.end method

.method private static b(Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;)Lcom/twitter/util/collection/ab;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/client/Session;",
            "Lcom/twitter/model/core/Tweet;",
            ")",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 37
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->R()Lcom/twitter/model/core/MediaEntity;

    move-result-object v2

    .line 39
    invoke-static {}, Lcom/twitter/android/av/ay;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-wide v4, p1, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v3, v4, v0

    if-nez v3, :cond_0

    .line 42
    invoke-static {p1, v2}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;)J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v0, v2, Lcom/twitter/model/core/MediaEntity;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    :goto_1
    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;)Lrx/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/client/Session;",
            "Lcom/twitter/model/core/Tweet;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/av/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1, p2}, Lcom/twitter/android/vr;->b(Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/vr;->a:Ltr;

    .line 30
    invoke-virtual {v0}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Ltr;->a(Lcom/twitter/library/client/Session;J)Lrx/o;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic b(Lcom/twitter/library/client/Session;Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 17
    check-cast p2, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/vr;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
