.class Lcom/twitter/android/ua;
.super Lcom/twitter/android/vw;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lcom/twitter/android/sn;)V
    .locals 6

    .prologue
    .line 346
    iput-object p1, p0, Lcom/twitter/android/ua;->a:Lcom/twitter/android/TweetFragment;

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
    .line 357
    invoke-static {p1}, Lcom/twitter/android/TweetFragment;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ua;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ua;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/uu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ua;->i:Lcom/twitter/android/sn;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/twitter/android/ua;->i:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/ua;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v1}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "unspecified"

    new-instance v5, Lcom/twitter/android/ub;

    invoke-direct {v5, p0, p1}, Lcom/twitter/android/ub;-><init>(Lcom/twitter/android/ua;Lcom/twitter/model/core/Tweet;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 369
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/vw;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/library/widget/TweetView;)V

    .line 350
    if-eqz p3, :cond_0

    .line 351
    iget-object v0, p0, Lcom/twitter/android/ua;->a:Lcom/twitter/android/TweetFragment;

    const-string/jumbo v1, "click"

    invoke-static {v0, v1, p1}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Ljava/lang/String;Lcom/twitter/model/core/Tweet;)V

    .line 353
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/media/EditableMedia;Lcom/twitter/library/widget/TweetView;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p1, Lcom/twitter/model/core/Tweet;->u:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/twitter/android/ua;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 376
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 377
    invoke-static {v0, p1}, Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;->a(Landroid/support/v4/app/FragmentManager;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/widget/ConfirmCancelPendingTweetDialog;

    .line 381
    :cond_0
    return-void
.end method
