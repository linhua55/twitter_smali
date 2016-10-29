.class Lcom/twitter/android/sy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/nq;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;

.field final synthetic c:Lcom/twitter/model/core/Tweet;

.field final synthetic d:Lcom/twitter/library/scribe/TwitterScribeItem;

.field final synthetic e:J

.field final synthetic f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field final synthetic g:Lcom/twitter/android/sn;


# direct methods
.method constructor <init>(Lcom/twitter/android/sn;Ljava/lang/ref/WeakReference;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;JLcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iput-object p2, p0, Lcom/twitter/android/sy;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/twitter/android/sy;->b:Landroid/support/v4/app/FragmentActivity;

    iput-object p4, p0, Lcom/twitter/android/sy;->c:Lcom/twitter/model/core/Tweet;

    iput-object p5, p0, Lcom/twitter/android/sy;->d:Lcom/twitter/library/scribe/TwitterScribeItem;

    iput-wide p6, p0, Lcom/twitter/android/sy;->e:J

    iput-object p8, p0, Lcom/twitter/android/sy;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/twitter/android/sy;->c:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->o:J

    iget-wide v2, p0, Lcom/twitter/android/sy;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(JLcom/twitter/model/core/Tweet;Z)V
    .locals 5

    .prologue
    .line 243
    iget-object v0, p0, Lcom/twitter/android/sy;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/av;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0, p4}, Lcom/twitter/library/widget/av;->b(Z)V

    .line 247
    :cond_0
    if-eqz p4, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/twitter/android/sy;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v2, p0, Lcom/twitter/android/sy;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "self_unretweet"

    iget-object v3, p0, Lcom/twitter/android/sy;->c:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcom/twitter/android/sy;->d:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v2, p0, Lcom/twitter/android/sy;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unretweet"

    iget-object v3, p0, Lcom/twitter/android/sy;->c:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcom/twitter/android/sy;->d:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 258
    :goto_0
    return-void

    .line 253
    :cond_2
    invoke-direct {p0}, Lcom/twitter/android/sy;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v2, p0, Lcom/twitter/android/sy;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "self_retweet"

    iget-object v3, p0, Lcom/twitter/android/sy;->c:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcom/twitter/android/sy;->d:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v2, p0, Lcom/twitter/android/sy;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "retweet"

    iget-object v3, p0, Lcom/twitter/android/sy;->c:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcom/twitter/android/sy;->d:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    goto :goto_0
.end method

.method public a(JZZZ)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v0, v0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-static {p3, p4, v0, p5}, Lcom/twitter/android/sn;->a(ZZLandroid/content/Context;Z)V

    .line 265
    return-void
.end method

.method public b(JLcom/twitter/model/core/Tweet;Z)V
    .locals 5

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/twitter/android/sy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v2, p0, Lcom/twitter/android/sy;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "self_quote"

    iget-object v3, p0, Lcom/twitter/android/sy;->c:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcom/twitter/android/sy;->d:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sy;->g:Lcom/twitter/android/sn;

    iget-object v2, p0, Lcom/twitter/android/sy;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/sn;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "quote"

    iget-object v3, p0, Lcom/twitter/android/sy;->c:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcom/twitter/android/sy;->d:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 275
    return-void
.end method

.method public c(JLcom/twitter/model/core/Tweet;Z)V
    .locals 7

    .prologue
    .line 280
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/sy;->e:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/sy;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, "retweet_dialog"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "dismiss"

    .line 281
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 283
    return-void
.end method

.method public d(JLcom/twitter/model/core/Tweet;Z)V
    .locals 7

    .prologue
    .line 288
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/sy;->e:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/sy;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, "retweet_dialog"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "impression"

    .line 289
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 288
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 291
    return-void
.end method
