.class public Lcig;
.super Lcik;
.source "Twttr"


# direct methods
.method public constructor <init>(Lcil;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcik;-><init>(Lcil;)V

    .line 13
    const/4 v0, 0x3

    iput v0, p0, Lcig;->b:I

    .line 14
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/model/core/Tweet;Lcij;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 24
    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {p2}, Lcij;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p2, Lcij;->c:Lcom/twitter/model/core/TwitterUser;

    .line 25
    invoke-static {v1}, Lbkn;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 26
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public a()Lcom/twitter/model/core/TweetActionType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->o:Lcom/twitter/model/core/TweetActionType;

    return-object v0
.end method

.method protected b(Lcom/twitter/model/core/Tweet;Lcij;)I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
