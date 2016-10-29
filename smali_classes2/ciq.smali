.class public Lciq;
.super Lcik;
.source "Twttr"


# direct methods
.method public constructor <init>(Lcil;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcik;-><init>(Lcil;)V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lciq;->b:I

    .line 13
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/model/core/Tweet;Lcij;)I
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p1, Lcom/twitter/model/core/Tweet;->B:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()Lcom/twitter/model/core/TweetActionType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->n:Lcom/twitter/model/core/TweetActionType;

    return-object v0
.end method

.method protected b(Lcom/twitter/model/core/Tweet;Lcij;)I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
