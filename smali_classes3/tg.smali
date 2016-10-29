.class public Ltg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbwj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVPlayer;)Ljava/util/List;
    .locals 1
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
    .line 18
    new-instance v0, Lth;

    invoke-direct {v0, p1}, Lth;-><init>(Lcom/twitter/library/av/playback/AVPlayer;)V

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)Ljava/util/List;
    .locals 4
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
    .line 24
    new-instance v0, Lti;

    invoke-direct {v0, p1, p2}, Lti;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lbvs;

    const/4 v2, 0x0

    new-instance v3, Lte;

    invoke-direct {v3, p1, p2}, Lte;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
