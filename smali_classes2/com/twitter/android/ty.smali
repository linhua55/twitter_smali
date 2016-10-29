.class public Lcom/twitter/android/ty;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:J

.field private d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private e:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private f:Lcom/twitter/model/core/Tweet;

.field private g:Lcom/twitter/android/timeline/bp;

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1657
    iput-wide v0, p0, Lcom/twitter/android/ty;->c:J

    .line 1664
    iput-wide v0, p0, Lcom/twitter/android/ty;->i:J

    .line 1667
    iput-object p1, p0, Lcom/twitter/android/ty;->a:Landroid/content/Context;

    .line 1668
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 1718
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/ty;->a:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/twitter/android/ty;->b:Z

    if-eqz v0, :cond_2

    const-class v0, Lcom/twitter/android/RootTweetActivity;

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "association"

    iget-object v2, p0, Lcom/twitter/android/ty;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1720
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tag"

    iget-wide v2, p0, Lcom/twitter/android/ty;->c:J

    .line 1721
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "focus_compose"

    iget-boolean v2, p0, Lcom/twitter/android/ty;->h:Z

    .line 1722
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 1723
    iget-object v0, p0, Lcom/twitter/android/ty;->f:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_3

    .line 1724
    const-string/jumbo v0, "tw"

    iget-object v2, p0, Lcom/twitter/android/ty;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/twitter/android/ty;->f:Lcom/twitter/model/core/Tweet;

    iget v3, v3, Lcom/twitter/model/core/Tweet;->L:I

    .line 1725
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1726
    iget-object v0, p0, Lcom/twitter/android/ty;->f:Lcom/twitter/model/core/Tweet;

    iget-object v0, v0, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    if-eqz v0, :cond_0

    .line 1727
    const-string/jumbo v0, "tw_scribe_content"

    iget-object v2, p0, Lcom/twitter/android/ty;->f:Lcom/twitter/model/core/Tweet;

    iget-object v2, v2, Lcom/twitter/model/core/Tweet;->ab:Lcom/twitter/model/timeline/al;

    sget-object v3, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v1, v0, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 1742
    :cond_0
    :goto_1
    const-string/jumbo v0, "scribe_item"

    iget-object v2, p0, Lcom/twitter/android/ty;->e:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1744
    iget-object v0, p0, Lcom/twitter/android/ty;->g:Lcom/twitter/android/timeline/bp;

    instance-of v0, v0, Lcom/twitter/android/timeline/ai;

    if-eqz v0, :cond_1

    .line 1745
    iget-object v0, p0, Lcom/twitter/android/ty;->g:Lcom/twitter/android/timeline/bp;

    check-cast v0, Lcom/twitter/android/timeline/ai;

    iget-object v0, v0, Lcom/twitter/android/timeline/ai;->a:Lcom/twitter/model/moments/bg;

    .line 1747
    const-string/jumbo v2, "timeline_moment"

    iget-object v0, v0, Lcom/twitter/model/moments/bg;->c:Lcom/twitter/model/moments/ad;

    sget-object v3, Lcom/twitter/model/moments/ad;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v1, v2, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 1750
    :cond_1
    return-object v1

    .line 1718
    :cond_2
    const-class v0, Lcom/twitter/android/TweetActivity;

    goto :goto_0

    .line 1730
    :cond_3
    iget-wide v2, p0, Lcom/twitter/android/ty;->i:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 1731
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "twitter"

    .line 1732
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "tweet"

    .line 1733
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "status_id"

    iget-wide v4, p0, Lcom/twitter/android/ty;->i:J

    .line 1734
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1736
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1738
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Tried to create TweetActivity intent with no tweet specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(J)Lcom/twitter/android/ty;
    .locals 1

    .prologue
    .line 1681
    iput-wide p1, p0, Lcom/twitter/android/ty;->c:J

    .line 1682
    return-object p0
.end method

.method public a(Lcom/twitter/android/timeline/bp;)Lcom/twitter/android/ty;
    .locals 0

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/twitter/android/ty;->g:Lcom/twitter/android/timeline/bp;

    .line 1703
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/ty;
    .locals 0

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/twitter/android/ty;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1687
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeItem;)Lcom/twitter/android/ty;
    .locals 0

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/twitter/android/ty;->e:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 1693
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/ty;
    .locals 0

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/twitter/android/ty;->f:Lcom/twitter/model/core/Tweet;

    .line 1698
    return-object p0
.end method

.method public a(Z)Lcom/twitter/android/ty;
    .locals 0

    .prologue
    .line 1671
    iput-boolean p1, p0, Lcom/twitter/android/ty;->b:Z

    .line 1672
    return-object p0
.end method

.method public b(J)Lcom/twitter/android/ty;
    .locals 1

    .prologue
    .line 1713
    iput-wide p1, p0, Lcom/twitter/android/ty;->i:J

    .line 1714
    return-object p0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/twitter/android/ty;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/android/ty;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1755
    return-void
.end method
