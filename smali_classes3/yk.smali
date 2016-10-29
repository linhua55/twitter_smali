.class Lyk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/twitter/model/dms/cf;

.field final synthetic e:Lxz;


# direct methods
.method constructor <init>(Lxz;JJLjava/lang/String;Lcom/twitter/model/dms/cf;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lyk;->e:Lxz;

    iput-wide p2, p0, Lyk;->a:J

    iput-wide p4, p0, Lyk;->b:J

    iput-object p6, p0, Lyk;->c:Ljava/lang/String;

    iput-object p7, p0, Lyk;->d:Lcom/twitter/model/dms/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 556
    iget-object v0, p0, Lyk;->e:Lxz;

    iget-object v0, v0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lyk;->e:Lxz;

    iget-object v0, v0, Lxz;->o:Lcom/twitter/android/by;

    iget-object v1, p0, Lyk;->e:Lxz;

    iget v1, v1, Lxz;->c:I

    invoke-interface {v0, v1}, Lcom/twitter/android/by;->b(I)Z

    .line 570
    :goto_0
    return-void

    .line 559
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lyk;->a:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:thread::shared_tweet_dm:click"

    aput-object v3, v1, v2

    .line 560
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lyk;->e:Lxz;

    iget-object v1, v1, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v1, Lcom/twitter/model/dms/l;

    iget-object v1, v1, Lcom/twitter/model/dms/l;->e:Ljava/lang/String;

    .line 562
    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lyk;->b:J

    iget-object v4, p0, Lyk;->c:Ljava/lang/String;

    .line 561
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;JLjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 559
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 563
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "twitter"

    .line 564
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tweet"

    .line 565
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "status_id"

    iget-object v2, p0, Lyk;->d:Lcom/twitter/model/dms/cf;

    iget-object v2, v2, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-wide v2, v2, Lcom/twitter/model/core/ay;->e:J

    .line 566
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lyk;->e:Lxz;

    iget-object v1, v1, Lxz;->g:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lyk;->e:Lxz;

    iget-object v3, v3, Lxz;->g:Landroid/content/Context;

    const-class v4, Lcom/twitter/android/TweetActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
