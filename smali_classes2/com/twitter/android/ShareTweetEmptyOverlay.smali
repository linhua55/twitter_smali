.class public Lcom/twitter/android/ShareTweetEmptyOverlay;
.super Lcom/twitter/android/dialog/TakeoverDialogFragment;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/model/core/ay;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/android/qc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/qc;-><init>(I)V

    .line 21
    invoke-virtual {v0, p0}, Lcom/twitter/android/qc;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/android/qb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qc;

    const v1, 0x7f0a0815

    .line 22
    invoke-virtual {v0, v1}, Lcom/twitter/android/qc;->b(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qc;

    const v1, 0x7f0a0814

    .line 23
    invoke-virtual {v0, v1}, Lcom/twitter/android/qc;->c(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qc;

    const v1, 0x7f020560

    .line 24
    invoke-virtual {v0, v1}, Lcom/twitter/android/qc;->a(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qc;

    .line 25
    invoke-virtual {v0}, Lcom/twitter/android/qc;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/qa;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/qa;->a(Landroid/os/Bundle;)Lcom/twitter/android/qa;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->b()V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "messages:share_tweet_no_followers::impression"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->a([Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->c()V

    .line 40
    invoke-virtual {p0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "messages:share_tweet_no_followers::cancel"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->a([Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method protected d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->d()V

    .line 48
    invoke-virtual {p0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->a()Lcom/twitter/android/qa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/qa;->a()Lcom/twitter/model/core/ay;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Lcom/twitter/model/core/ay;Z)V

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "messages:share_tweet_no_followers::share_tweet"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->a([Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public synthetic e()Lcom/twitter/android/dialog/p;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->a()Lcom/twitter/android/qa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/android/dialog/l;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->a()Lcom/twitter/android/qa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/twitter/app/common/base/c;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/ShareTweetEmptyOverlay;->a()Lcom/twitter/android/qa;

    move-result-object v0

    return-object v0
.end method
