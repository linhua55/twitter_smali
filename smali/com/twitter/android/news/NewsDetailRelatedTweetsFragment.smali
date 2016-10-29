.class public Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;
.super Lcom/twitter/android/TweetListFragment;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/twitter/library/widget/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/TweetListFragment",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        "Lcom/twitter/android/vz;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/twitter/library/widget/e",
        "<",
        "Lcom/twitter/library/widget/UserView;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Z

.field private d:Lcom/twitter/library/util/FriendshipCache;

.field private e:Lcom/twitter/android/news/k;

.field private f:Lcom/twitter/android/yb;

.field private g:Z

.field private h:Lcom/twitter/android/widget/er;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 315
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 316
    return-void
.end method


# virtual methods
.method protected I_()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method protected X_()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->a()V

    .line 102
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->ag_()V

    .line 103
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->f:Lcom/twitter/android/yb;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->f:Lcom/twitter/android/yb;

    new-instance v1, Lcmb;

    invoke-direct {v1, p2}, Lcmb;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/yb;->a(Lcmf;)Lcmf;

    .line 142
    :cond_0
    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 246
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->h:Lcom/twitter/android/widget/er;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/er;->c(I)I

    move-result v0

    .line 247
    iget-boolean v1, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->g:Z

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 248
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 249
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "user_id"

    const/4 v3, 0x2

    .line 250
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 249
    invoke-virtual {p0, v0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->startActivity(Landroid/content/Intent;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-boolean v1, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->g:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    :cond_2
    if-ne v0, v2, :cond_0

    .line 252
    :cond_3
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/cn;

    .line 253
    new-instance v1, Lcom/twitter/app/common/base/z;

    invoke-direct {v1}, Lcom/twitter/app/common/base/z;-><init>()V

    const/4 v2, 0x0

    .line 254
    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v1

    .line 255
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "tw"

    iget-object v0, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    .line 256
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    .line 257
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 253
    invoke-virtual {p0, v0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Lcmf;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcmf;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/news/NewsDetailActivity;

    .line 126
    invoke-virtual {v0}, Lcom/twitter/android/news/NewsDetailActivity;->l()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->c:Z

    .line 131
    :goto_0
    iget-boolean v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->W:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->Q_()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->W:Z

    .line 135
    :cond_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p0, p1}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->b(Lcmf;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/twitter/library/widget/BaseUserView;JII)V
    .locals 6

    .prologue
    .line 62
    move-object v1, p1

    check-cast v1, Lcom/twitter/library/widget/UserView;

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->a(Lcom/twitter/library/widget/UserView;JII)V

    return-void
.end method

.method public a(Lcom/twitter/library/widget/UserView;JII)V
    .locals 8

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 290
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->ab:Lcom/twitter/library/client/bd;

    new-instance v1, Lbuc;

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 291
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v6

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    .line 290
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 292
    const-string/jumbo v0, "unfollow"

    .line 299
    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ":user_module:user"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-direct {p0, v0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->b(Ljava/lang/String;)V

    .line 302
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 295
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->ab:Lcom/twitter/library/client/bd;

    new-instance v1, Lbtz;

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 296
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v6

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    .line 295
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 297
    const-string/jumbo v0, "follow"

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Z)V

    .line 108
    iget-boolean v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->g:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 111
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/AbsListView;IIIZ)Z
    .locals 4

    .prologue
    .line 321
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/TweetListFragment;->a(Landroid/widget/AbsListView;IIIZ)Z

    move-result v1

    .line 325
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ScrollingHeaderActivity;

    .line 327
    iget-boolean v2, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->S:Z

    if-eqz v2, :cond_0

    .line 328
    iget v2, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->O:I

    iget v3, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->N:I

    sub-int/2addr v2, v3

    .line 329
    neg-int v2, v2

    iget v3, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->P:I

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/ScrollingHeaderActivity;->b(II)V

    .line 333
    :cond_0
    return v1
.end method

.method protected ag_()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->ag_()V

    .line 116
    iget-boolean v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->g:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 119
    :cond_0
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->e:Lcom/twitter/android/news/k;

    invoke-interface {v0}, Lcom/twitter/android/news/k;->m()V

    .line 151
    return-void
.end method

.method protected h()V
    .locals 3

    .prologue
    .line 339
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "tweet::last:impression"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->b(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const-string/jumbo v0, "news_details"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const v11, 0x7f130345

    const/4 v3, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v6, 0x1

    .line 186
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->i()Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    .line 190
    invoke-virtual {v0, v6}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 191
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, "tweet"

    .line 192
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 193
    new-instance v0, Lciy;

    invoke-direct {v0}, Lciy;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":tweet:avatar:profile_click"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual {v0, v4}, Lciy;->a(Ljava/lang/String;)Lciy;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":tweet::open_link"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v0, v4}, Lciy;->b(Ljava/lang/String;)Lciy;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":tweet:photo:click"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lciy;->c(Ljava/lang/String;)Lciy;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lciy;->a()Lciw;

    move-result-object v4

    .line 199
    new-instance v0, Lcom/twitter/android/vw;

    new-instance v5, Lcom/twitter/android/sn;

    invoke-direct {v5, p0, v2}, Lcom/twitter/android/sn;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;Lcom/twitter/android/sn;)V

    .line 202
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v1

    const-string/jumbo v2, "tweet_count"

    invoke-virtual {v1, v2}, Lcom/twitter/app/common/list/w;->b(Ljava/lang/String;)I

    move-result v2

    .line 204
    new-instance v4, Lcom/twitter/android/gx;

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v5

    iget-object v8, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    const/4 v9, -0x1

    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v10

    move-object v7, v0

    invoke-direct/range {v4 .. v10}, Lcom/twitter/android/gx;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;ILcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 208
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 208
    invoke-static {v0, v1}, Lcom/twitter/android/news/n;->f(J)I

    move-result v0

    .line 210
    invoke-static {}, Lcom/twitter/android/news/n;->b()I

    move-result v5

    .line 211
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 212
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    .line 213
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v7, v5, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 214
    check-cast v0, Lcom/twitter/internal/android/widget/GroupedRowView;

    invoke-virtual {v0, v6}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    .line 216
    iget-boolean v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->g:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04024d

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 220
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0a0592

    .line 221
    invoke-virtual {p0, v3}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 222
    check-cast v0, Lcom/twitter/internal/android/widget/GroupedRowView;

    invoke-virtual {v0, v6}, Lcom/twitter/internal/android/widget/GroupedRowView;->setStyle(I)V

    .line 224
    new-instance v7, Lcom/twitter/android/news/l;

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f0200bd

    iget-object v11, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    move-object v10, p0

    invoke-direct/range {v7 .. v12}, Lcom/twitter/android/news/l;-><init>(Landroid/content/Context;ILcom/twitter/library/widget/e;Lcom/twitter/library/util/FriendshipCache;Z)V

    iput-object v7, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->f:Lcom/twitter/android/yb;

    .line 226
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->f:Lcom/twitter/android/yb;

    invoke-virtual {v0, v12}, Lcom/twitter/android/yb;->e(Z)V

    .line 228
    new-instance v0, Lcom/twitter/android/widget/er;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/widget/BaseAdapter;

    new-instance v5, Lcom/twitter/android/widget/et;

    invoke-direct {v5, v2}, Lcom/twitter/android/widget/et;-><init>(Landroid/view/View;)V

    aput-object v5, v3, v12

    iget-object v2, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->f:Lcom/twitter/android/yb;

    aput-object v2, v3, v6

    new-instance v2, Lcom/twitter/android/widget/et;

    invoke-direct {v2, v1}, Lcom/twitter/android/widget/et;-><init>(Landroid/view/View;)V

    aput-object v2, v3, v13

    const/4 v1, 0x3

    aput-object v4, v3, v1

    invoke-direct {v0, v3, v13}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->h:Lcom/twitter/android/widget/er;

    .line 235
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->h:Lcom/twitter/android/widget/er;

    invoke-virtual {v0, v4, v1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    .line 236
    return-void

    .line 231
    :cond_0
    new-instance v0, Lcom/twitter/android/widget/er;

    new-array v2, v13, [Landroid/widget/BaseAdapter;

    new-instance v3, Lcom/twitter/android/widget/et;

    invoke-direct {v3, v1}, Lcom/twitter/android/widget/et;-><init>(Landroid/view/View;)V

    aput-object v3, v2, v12

    aput-object v4, v2, v6

    invoke-direct {v0, v2, v13}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;I)V

    iput-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->h:Lcom/twitter/android/widget/er;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onAttach(Landroid/app/Activity;)V

    .line 156
    instance-of v0, p1, Lcom/twitter/android/news/k;

    if-eqz v0, :cond_0

    .line 157
    check-cast p1, Lcom/twitter/android/news/k;

    iput-object p1, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->e:Lcom/twitter/android/news/k;

    .line 159
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "news_id"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->a:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lcfm;->a(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->b:J

    .line 85
    if-eqz p1, :cond_0

    const-string/jumbo v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/util/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    const-string/jumbo v2, "japan_news_android_author_account_section_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/config/d;->a(JLjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->g:Z

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->c:Z

    .line 97
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-object v4

    .line 177
    :cond_0
    sget-object v0, Lcom/twitter/library/provider/da;->c:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->b:J

    .line 178
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 177
    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 180
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lchs;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/library/util/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const-string/jumbo v0, "friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 267
    :cond_0
    return-void
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v0, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-object v4

    .line 166
    :cond_0
    sget-object v0, Lcom/twitter/library/provider/da;->b:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->b:J

    .line 167
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 166
    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 169
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/news/NewsDetailRelatedTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcho;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_0
.end method
