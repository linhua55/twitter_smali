.class public Ltz;
.super Lcmx;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmx",
        "<",
        "Lcom/twitter/model/core/cs;",
        "Lcom/twitter/library/av/playback/TweetAVDataSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/provider/dm;


# direct methods
.method public constructor <init>(Lcom/twitter/library/provider/dm;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcmx;-><init>()V

    .line 26
    iput-object p1, p0, Ltz;->a:Lcom/twitter/library/provider/dm;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/cs;)Lcom/twitter/library/av/playback/TweetAVDataSource;
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 34
    new-instance v0, Lcom/twitter/library/av/playback/TweetAVDataSource;

    iget-object v1, p0, Ltz;->a:Lcom/twitter/library/provider/dm;

    iget-wide v2, p1, Lcom/twitter/model/core/cs;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/provider/dm;->d(J)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/twitter/model/core/cs;

    invoke-virtual {p0, p1}, Ltz;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/library/av/playback/TweetAVDataSource;

    move-result-object v0

    return-object v0
.end method
