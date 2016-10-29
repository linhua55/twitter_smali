.class public Ltd;
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


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVPlayer;)Ljava/util/List;
    .locals 2
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
    .line 21
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayer;->e()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 22
    new-instance v0, Ltf;

    invoke-direct {v0, p1}, Ltf;-><init>(Lcom/twitter/library/av/playback/AVPlayer;)V

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 25
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
    .line 31
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
