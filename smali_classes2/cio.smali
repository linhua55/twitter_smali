.class public Lcio;
.super Lcik;
.source "Twttr"


# direct methods
.method public constructor <init>(Lcil;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcik;-><init>(Lcil;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/model/core/Tweet;Lcij;)I
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x2

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcom/twitter/model/core/TweetActionType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->d:Lcom/twitter/model/core/TweetActionType;

    return-object v0
.end method

.method protected b(Lcom/twitter/model/core/Tweet;Lcij;)I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
