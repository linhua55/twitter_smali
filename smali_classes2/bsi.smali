.class public Lbsi;
.super Lbsj;
.source "Twttr"


# instance fields
.field private final a:Z

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JZII)V
    .locals 7

    .prologue
    .line 27
    const-class v0, Lbsi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/twitter/library/service/ab;

    invoke-direct {v3, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lbsj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;JI)V

    .line 28
    iput-boolean p5, p0, Lbsi;->a:Z

    .line 29
    iput p7, p0, Lbsi;->k:I

    .line 30
    return-void
.end method


# virtual methods
.method protected h()Lcom/twitter/library/service/e;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 34
    invoke-super {p0}, Lbsj;->h()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 35
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "timeline"

    aput-object v2, v1, v6

    const-string/jumbo v2, "user"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v2, "id"

    .line 36
    invoke-virtual {p0}, Lbsi;->D()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v2, "include_my_retweet"

    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v2, "earned"

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v2, "exclude_pinned_tweets"

    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 41
    iget v1, p0, Lbsi;->k:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 43
    const-string/jumbo v1, "include_tweet_replies"

    invoke-virtual {v0, v1, v6}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 47
    :goto_0
    iget-boolean v1, p0, Lbsi;->a:Z

    if-eqz v1, :cond_0

    .line 48
    const-string/jumbo v1, "pc"

    invoke-virtual {v0, v1, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 50
    :cond_0
    return-object v0

    .line 45
    :cond_1
    const-string/jumbo v1, "include_tweet_replies"

    invoke-virtual {v0, v1, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    goto :goto_0
.end method

.method protected s()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lbsi;->k:I

    return v0
.end method

.method protected x()Lcom/twitter/model/timeline/bu;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lbsi;->s()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcie;->a()Lcom/twitter/model/timeline/bu;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/model/timeline/bu;->a:Lcom/twitter/model/timeline/bu;

    goto :goto_0
.end method
