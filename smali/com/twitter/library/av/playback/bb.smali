.class public Lcom/twitter/library/av/playback/bb;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            "Lcdq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/library/av/playback/bc;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/bc;-><init>()V

    invoke-direct {p0, v0}, Lcom/twitter/library/av/playback/bb;-><init>(Lcom/twitter/util/object/c;)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/twitter/util/object/c;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            "Lcdq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/twitter/library/av/playback/bb;->a:Lcom/twitter/util/object/c;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/twitter/library/av/playback/ba;

    invoke-direct {v0, p1}, Lcom/twitter/library/av/playback/ba;-><init>(Lcom/twitter/library/av/playback/AVDataSource;)V

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/av/playback/ba;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->an()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/twitter/library/av/playback/bb;->a:Lcom/twitter/util/object/c;

    invoke-interface {v0, p1}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdq;

    invoke-virtual {v0}, Lcdq;->m()Lcom/twitter/model/livevideo/d;

    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    sget-object v0, Lcom/twitter/library/av/playback/AVDataSource;->a:Lcom/twitter/library/av/playback/AVDataSource;

    .line 48
    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bb;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    .line 50
    :goto_1
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;

    invoke-direct {v0, v1}, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;-><init>(Lcom/twitter/model/livevideo/d;)V

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Lcom/twitter/library/av/playback/TweetAVDataSource;

    invoke-direct {v0, p1}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bb;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    goto :goto_1
.end method
