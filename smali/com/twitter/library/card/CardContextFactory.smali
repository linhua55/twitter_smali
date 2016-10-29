.class public Lcom/twitter/library/card/CardContextFactory;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/card/CardContext;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/library/card/y;

    invoke-direct {v0}, Lcom/twitter/library/card/y;-><init>()V

    new-instance v1, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/card/ab;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/twitter/library/card/y;->a(Lcom/twitter/library/card/CardContextDataProvider;)Lcom/twitter/library/card/y;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/scribe/TweetScribeItemsProvider;

    invoke-direct {v1, p0}, Lcom/twitter/library/scribe/TweetScribeItemsProvider;-><init>(Lcom/twitter/model/core/Tweet;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/twitter/library/card/y;->a(Lcom/twitter/library/scribe/ScribeItemsProvider;)Lcom/twitter/library/card/y;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/card/y;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/card/y;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/card/y;->a(Lcss;)Lcom/twitter/library/card/y;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/card/y;->a(Z)Lcom/twitter/library/card/y;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/twitter/library/card/y;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/CardContext;

    .line 25
    return-object v0
.end method

.method public static a(Lcom/twitter/model/dms/bo;)Lcom/twitter/library/card/CardContext;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/library/card/y;

    invoke-direct {v0}, Lcom/twitter/library/card/y;-><init>()V

    new-instance v1, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;-><init>(Lcom/twitter/model/dms/bo;Lcom/twitter/library/card/ab;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/twitter/library/card/y;->a(Lcom/twitter/library/card/CardContextDataProvider;)Lcom/twitter/library/card/y;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/scribe/DMMessageEntryScribeItemsProvider;

    invoke-direct {v1, p0}, Lcom/twitter/library/scribe/DMMessageEntryScribeItemsProvider;-><init>(Lcom/twitter/model/dms/bo;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/twitter/library/card/y;->a(Lcom/twitter/library/scribe/ScribeItemsProvider;)Lcom/twitter/library/card/y;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->o()Lcom/twitter/model/core/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/card/y;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/card/y;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/twitter/library/card/y;->a(Z)Lcom/twitter/library/card/y;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/twitter/library/card/y;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/CardContext;

    .line 36
    return-object v0
.end method
