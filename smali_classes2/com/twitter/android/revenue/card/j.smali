.class public Lcom/twitter/android/revenue/card/j;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->T()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 20
    iget-object v3, v0, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    const-string/jumbo v4, "cards.twitter.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    iget-object v0, v0, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    :goto_1
    move-object v1, v0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
