.class Lcom/twitter/android/ux;
.super Lcom/twitter/android/vw;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment2;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment2;Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lcom/twitter/android/sn;)V
    .locals 6

    .prologue
    .line 347
    iput-object p1, p0, Lcom/twitter/android/ux;->a:Lcom/twitter/android/TweetFragment2;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lcom/twitter/android/sn;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/TweetView;)V
    .locals 6

    .prologue
    .line 358
    invoke-static {p1}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ux;->a:Lcom/twitter/android/TweetFragment2;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ux;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/android/vo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ux;->i:Lcom/twitter/android/sn;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/twitter/android/ux;->i:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/ux;->a:Lcom/twitter/android/TweetFragment2;

    invoke-virtual {v1}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "unspecified"

    new-instance v5, Lcom/twitter/android/uy;

    invoke-direct {v5, p0, p1}, Lcom/twitter/android/uy;-><init>(Lcom/twitter/android/ux;Lcom/twitter/model/core/Tweet;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 371
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V

    .line 351
    if-eqz p3, :cond_0

    .line 352
    iget-object v0, p0, Lcom/twitter/android/ux;->a:Lcom/twitter/android/TweetFragment2;

    const-string/jumbo v1, "click"

    invoke-static {v0, v1, p1}, Lcom/twitter/android/TweetFragment2;->a(Lcom/twitter/android/TweetFragment2;Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 354
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/media/EditableMedia;Lcom/twitter/library/widget/TweetView;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/twitter/android/ux;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 378
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 379
    invoke-static {v0, p1}, Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;->a(Landroid/support/v4/app/FragmentManager;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;

    .line 383
    :cond_0
    return-void
.end method
