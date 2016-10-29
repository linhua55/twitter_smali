.class public abstract Lcom/twitter/library/client/BrowserDataSourceFactory;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/library/client/BrowserDataSource;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    if-eqz p0, :cond_0

    new-instance v0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;-><init>(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/client/ae;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/client/BrowserDataSource;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    if-eqz p0, :cond_0

    new-instance v0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/ae;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
