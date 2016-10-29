.class public Ltm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbwj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/twitter/library/av/playback/AVPlayer;)Z
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayer;->e()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->d()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVPlayer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/av/playback/AVPlayer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbvs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ltm;->b(Lcom/twitter/library/av/playback/AVPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ltl;

    invoke-direct {v0, p1}, Ltl;-><init>(Lcom/twitter/library/av/playback/AVPlayer;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lbvs;

    const/4 v2, 0x0

    new-instance v3, Ltj;

    invoke-direct {v3, p1}, Ltj;-><init>(Lcom/twitter/library/av/playback/AVPlayer;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/av/playback/AVPlayer;",
            "Lcom/twitter/model/av/AVMedia;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbvs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltm;->b(Lcom/twitter/library/av/playback/AVPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ltk;

    invoke-direct {v0, p1, p2}, Ltk;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
