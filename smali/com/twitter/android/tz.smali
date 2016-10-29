.class Lcom/twitter/android/tz;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/TweetActivity;)V
    .locals 0

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/TweetActivity;Lcom/twitter/android/tq;)V
    .locals 0

    .prologue
    .line 1601
    invoke-direct {p0, p1}, Lcom/twitter/android/tz;-><init>(Lcom/twitter/android/TweetActivity;)V

    return-void
.end method

.method private a(Lcom/twitter/library/service/x;Lcom/twitter/internal/android/service/ab;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/service/x;",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1627
    .line 1628
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->M()I

    move-result v1

    .line 1629
    packed-switch v1, :pswitch_data_0

    .line 1643
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    iget-object v0, v0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    iget-object v1, v0, Lcom/twitter/android/TweetActivity;->e:Lawi;

    invoke-virtual {p2}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    invoke-interface {v1, v0}, Lawi;->c(Z)V

    .line 1648
    :cond_0
    return-void

    .line 1631
    :pswitch_1
    invoke-virtual {p2}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    goto :goto_0

    .line 1629
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 1601
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/tz;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1604
    instance-of v0, p1, Lcom/twitter/library/api/upload/al;

    if-eqz v0, :cond_1

    .line 1605
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/tz;->a(Lcom/twitter/library/service/x;Lcom/twitter/internal/android/service/ab;)V

    .line 1624
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    iget-object v0, v0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    instance-of v0, p1, Lbti;

    if-eqz v0, :cond_2

    .line 1608
    check-cast p1, Lbti;

    .line 1609
    iget-object v0, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    iget-object v0, v0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->p:J

    invoke-virtual {p1}, Lbti;->h()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {p1}, Lbti;->s()J

    move-result-wide v2

    iget-object v4, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    iget-object v4, v4, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    .line 1611
    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 1610
    invoke-static {v2, v3, v4, v5}, Lcom/twitter/library/provider/cn;->a(JJ)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/android/TweetActivity;->a(Lcom/twitter/android/TweetActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1612
    iget-object v0, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v0, v1, v6, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 1614
    :cond_2
    instance-of v0, p1, Lbto;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    iget-object v0, v0, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->p:J

    check-cast p1, Lbto;

    .line 1616
    invoke-virtual {p1}, Lbto;->g()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1617
    :goto_1
    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    iget-object v2, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    iget-object v2, v2, Lcom/twitter/android/TweetActivity;->d:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->p:J

    iget-object v4, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    iget-object v4, v4, Lcom/twitter/android/TweetActivity;->c:Lcom/twitter/library/client/Session;

    .line 1619
    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 1618
    invoke-static {v2, v3, v4, v5}, Lcom/twitter/library/provider/cn;->b(JJ)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/android/TweetActivity;->a(Lcom/twitter/android/TweetActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1620
    iget-object v0, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v0}, Lcom/twitter/android/TweetActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/tz;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v0, v1, v6, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 1616
    goto :goto_1
.end method
