.class public Lcom/twitter/android/MediaPlayerActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lasc;
.implements Lcom/twitter/android/bn;
.implements Lcom/twitter/android/widget/ch;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/base/TwitterFragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lasc;",
        "Lcom/twitter/android/bn;",
        "Lcom/twitter/android/widget/ch;"
    }
.end annotation


# instance fields
.field protected a:Lcom/twitter/android/widget/MediaPlayerView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/twitter/library/media/player/InlineVideoView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Lcom/twitter/media/ui/image/MediaImageView;

.field private f:Lcom/twitter/library/widget/TweetView;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/twitter/model/core/Tweet;

.field private m:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private n:Landroid/net/Uri;

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/view/animation/Animation;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Lasd;

.field private t:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private u:Lcom/twitter/android/MediaActionBarFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/MediaPlayerActivity;)Lcom/twitter/library/media/player/InlineVideoView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Lcom/twitter/library/media/player/InlineVideoView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lasd;

    invoke-direct {v0, p0}, Lasd;-><init>(Lasc;)V

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->s:Lasd;

    .line 296
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->s:Lasd;

    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Lcom/twitter/library/media/player/InlineVideoView;

    invoke-virtual {v0, v1}, Lasd;->a(Lcom/twitter/library/media/player/InlineVideoView;)V

    .line 297
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->N()Lcom/twitter/library/media/manager/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/l;->e()Lcom/twitter/library/media/manager/al;

    move-result-object v1

    .line 298
    invoke-static {p1}, Lcom/twitter/library/media/manager/am;->a(Ljava/lang/String;)Lcom/twitter/library/media/manager/an;

    move-result-object v0

    new-instance v2, Lcom/twitter/android/ju;

    invoke-direct {v2, p0}, Lcom/twitter/android/ju;-><init>(Lcom/twitter/android/MediaPlayerActivity;)V

    invoke-virtual {v0, v2}, Lcom/twitter/library/media/manager/an;->a(Lcom/twitter/media/request/i;)Lcom/twitter/media/request/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/an;

    .line 315
    invoke-virtual {v0}, Lcom/twitter/library/media/manager/an;->a()Lcom/twitter/library/media/manager/am;

    move-result-object v0

    .line 316
    invoke-virtual {v1, v0}, Lcom/twitter/library/media/manager/al;->d(Lcom/twitter/media/request/g;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->t:Ljava/util/concurrent/Future;

    .line 317
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 513
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/twitter/android/jw;

    invoke-direct {v1, p0}, Lcom/twitter/android/jw;-><init>(Lcom/twitter/android/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 525
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->o:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    .line 112
    const v1, 0x7f0401a3

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 113
    invoke-virtual {v0, v2}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 114
    invoke-virtual {v0, v2}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 115
    return-object v0
.end method

.method public a(I)V
    .locals 6

    .prologue
    .line 535
    if-nez p1, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->d()V

    .line 540
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/LinearLayout;

    .line 541
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 542
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 543
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 544
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 545
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->e()V

    goto :goto_0

    .line 548
    :cond_2
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
    .line 474
    if-eqz p2, :cond_0

    .line 475
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lcgi;->a:Lcgi;

    invoke-virtual {v0, p2}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    .line 477
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->u:Lcom/twitter/android/MediaActionBarFragment;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->u:Lcom/twitter/android/MediaActionBarFragment;

    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/model/core/Tweet;)V

    .line 482
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->q:Z

    if-ne v0, p1, :cond_0

    .line 510
    :goto_0
    return-void

    .line 504
    :cond_0
    if-eqz p1, :cond_1

    .line 505
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 509
    :goto_1
    iput-boolean p1, p0, Lcom/twitter/android/MediaPlayerActivity;->q:Z

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public a(Lcyd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-interface {p1}, Lcyd;->a()I

    move-result v2

    .line 264
    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lclw;->c()Ljava/lang/String;

    move-result-object v1

    .line 266
    :goto_0
    const v3, 0x7f1307e8

    if-ne v2, v3, :cond_1

    .line 267
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v2

    const/4 v3, 0x0

    .line 268
    invoke-virtual {v2, v1, v3}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;[I)Lcom/twitter/android/composer/ax;

    move-result-object v1

    .line 269
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v1

    .line 270
    invoke-virtual {v1, p0}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 267
    invoke-virtual {p0, v1}, Lcom/twitter/android/MediaPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 275
    :goto_1
    return v0

    .line 265
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    .line 272
    :cond_1
    const v1, 0x7f1307cd

    if-ne v2, v1, :cond_2

    .line 273
    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->showDialog(I)V

    .line 275
    :cond_2
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto :goto_1
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const v0, 0x7f140019

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 235
    :cond_0
    const v0, 0x7f14000c

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcyg;)I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 252
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Lcyg;)I

    move-result v4

    .line 253
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 254
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 255
    iget-object v5, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    iget-wide v6, v5, Lcom/twitter/model/core/Tweet;->b:J

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    move v1, v2

    .line 256
    :goto_0
    const v5, 0x7f1307cd

    invoke-virtual {v0, v5}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    .line 257
    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->ad()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->u:Lcom/twitter/android/MediaActionBarFragment;

    if-eqz v1, :cond_1

    .line 256
    :goto_1
    invoke-virtual {v0, v2}, Lbjl;->b(Z)Lbjl;

    .line 258
    return v4

    :cond_0
    move v1, v3

    .line 255
    goto :goto_0

    :cond_1
    move v2, v3

    .line 257
    goto :goto_1
.end method

.method public b()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->p:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/twitter/util/c;->b(Landroid/view/View;)V

    .line 401
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->d()V

    .line 402
    return-void
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x96

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 121
    const-string/jumbo v0, "aud"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->h:Z

    .line 122
    const-string/jumbo v0, "simple_controls"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->j:Z

    .line 124
    const-string/jumbo v0, "association"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->m:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 125
    const-string/jumbo v0, "tweet"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    .line 126
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    .line 127
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 126
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/library/provider/cn;->b(JJ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->n:Landroid/net/Uri;

    .line 130
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    const-string/jumbo v1, "media_forward"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 134
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->d(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->k:Z

    .line 136
    const-string/jumbo v0, "player_url"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    const-string/jumbo v0, "player_stream_urls"

    .line 139
    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 141
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 142
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/MediaDescriptor;

    iget-object v0, v0, Lcom/twitter/media/model/MediaDescriptor;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 145
    :goto_1
    const v0, 0x7f13036e

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->d:Landroid/widget/ProgressBar;

    .line 146
    const v0, 0x7f13046e

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/MediaPlayerView;

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    .line 147
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    iget-boolean v4, p0, Lcom/twitter/android/MediaPlayerActivity;->j:Z

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/MediaPlayerView;->setUseSimplePlayPauseControls(Z)V

    .line 148
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    iget-object v4, p0, Lcom/twitter/android/MediaPlayerActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/MediaPlayerView;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 151
    const v0, 0x7f1305ef

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/TweetView;

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->f:Lcom/twitter/library/widget/TweetView;

    .line 152
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->f:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0, v6}, Lcom/twitter/library/widget/TweetView;->setHideInlineActions(Z)V

    .line 153
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->f:Lcom/twitter/library/widget/TweetView;

    iget-object v4, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v4}, Lcom/twitter/library/widget/TweetView;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 154
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->f:Lcom/twitter/library/widget/TweetView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/twitter/library/widget/TweetView;->setVisibility(I)V

    .line 155
    const v0, 0x7f130471

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 156
    const v4, 0x7f130470

    invoke-virtual {p0, v4}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 157
    iget-object v5, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v5, v0, v4}, Lcom/twitter/android/widget/MediaPlayerView;->a(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 158
    const v0, 0x7f13046f

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/player/InlineVideoView;

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Lcom/twitter/library/media/player/InlineVideoView;

    .line 159
    invoke-static {v2}, Lcom/twitter/library/util/an;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->i:Z

    .line 160
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->i:Z

    if-eqz v0, :cond_1

    .line 161
    iput-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->r:Ljava/lang/String;

    .line 164
    :cond_1
    const v0, 0x7f130472

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/LinearLayout;

    .line 169
    new-instance v0, Lcom/twitter/android/bm;

    invoke-direct {v0, p0}, Lcom/twitter/android/bm;-><init>(Lcom/twitter/android/bn;)V

    .line 171
    const v2, 0x7f05002e

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->o:Landroid/view/animation/Animation;

    .line 172
    iget-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->o:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 173
    iget-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->o:Landroid/view/animation/Animation;

    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 174
    iget-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->o:Landroid/view/animation/Animation;

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 176
    const v2, 0x7f050030

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->p:Landroid/view/animation/Animation;

    .line 177
    iget-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->p:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 178
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 179
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 181
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->i:Z

    if-eqz v0, :cond_6

    .line 182
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->b(Ljava/lang/String;)V

    .line 183
    const v1, 0x7f130143

    iget-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->m:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v3, "tweet"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "tweet"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/app/common/base/TwitterFragmentActivity;ILcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/android/MediaActionBarFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->u:Lcom/twitter/android/MediaActionBarFragment;

    .line 186
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :goto_2
    const-string/jumbo v0, "image_url"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const v0, 0x7f1302fe

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    .line 198
    invoke-virtual {v0, v7}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 199
    iget-boolean v2, p0, Lcom/twitter/android/MediaPlayerActivity;->h:Z

    if-eqz v2, :cond_7

    .line 200
    sget-object v2, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->c:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 204
    :goto_3
    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 205
    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->e:Lcom/twitter/media/ui/image/MediaImageView;

    .line 208
    :cond_2
    if-eqz p1, :cond_3

    .line 209
    const-string/jumbo v0, "seek"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/MediaPlayerActivity;->g:I

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->n:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v8, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 216
    :cond_4
    invoke-direct {p0}, Lcom/twitter/android/MediaPlayerActivity;->h()V

    .line 217
    return-void

    :cond_5
    move v0, v7

    .line 134
    goto/16 :goto_0

    .line 188
    :cond_6
    const-string/jumbo v0, "video_index"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 189
    const-string/jumbo v1, "video_position"

    invoke-virtual {v9, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 190
    iget-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v2, v3, v0, v1}, Lcom/twitter/android/widget/MediaPlayerView;->a(Ljava/util/ArrayList;II)V

    .line 191
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    const-string/jumbo v1, "is_looping"

    invoke-virtual {v9, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/MediaPlayerView;->setIsLooping(Z)V

    .line 192
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/MediaPlayerView;->setMediaControllerListener(Lcom/twitter/android/widget/ch;)V

    goto :goto_2

    .line 202
    :cond_7
    sget-object v2, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->a:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    goto :goto_3

    :cond_8
    move-object v1, v8

    goto/16 :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->e()V

    .line 407
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/twitter/util/c;->a(Landroid/view/View;)V

    .line 408
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 430
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 431
    packed-switch p1, :pswitch_data_0

    .line 447
    :pswitch_0
    const v0, 0x7f0a051d

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 451
    :goto_0
    return-void

    .line 433
    :pswitch_1
    const v0, 0x7f0a051e

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 437
    :pswitch_2
    const v0, 0x7f0a051c

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 442
    :pswitch_3
    const v0, 0x7f0a0511

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 412
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 413
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->e:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 416
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->i:Z

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/MediaPlayerView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Lcom/twitter/library/media/player/InlineVideoView;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Lcom/twitter/library/media/player/InlineVideoView;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/player/InlineVideoView;->setVisibility(I)V

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/MediaPlayerView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Lcom/twitter/library/media/player/InlineVideoView;

    invoke-virtual {v0, v2}, Lcom/twitter/library/media/player/InlineVideoView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Lcom/twitter/library/media/player/InlineVideoView;

    invoke-virtual {v0}, Lcom/twitter/library/media/player/InlineVideoView;->start()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->finish()V

    .line 390
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->a(Z)V

    .line 227
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->l:Lcom/twitter/model/core/Tweet;

    invoke-static {p0, v0, p1}, Lcom/twitter/android/MediaActionBarFragment;->a(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/model/core/Tweet;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
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

    .line 462
    new-instance v0, Lcom/twitter/android/bt;

    iget-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->n:Landroid/net/Uri;

    sget-object v3, Lcho;->b:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onDestroy()V

    .line 370
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->t:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->t:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 372
    iput-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->t:Ljava/util/concurrent/Future;

    .line 374
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->i:Z

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Lcom/twitter/library/media/player/InlineVideoView;

    invoke-virtual {v0}, Lcom/twitter/library/media/player/InlineVideoView;->a()V

    .line 380
    :goto_0
    iput-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->s:Lasd;

    .line 381
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 382
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/MediaPlayerView;->f()V

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/MediaPlayerActivity;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 491
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onPause()V

    .line 346
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->i:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Lcom/twitter/library/media/player/InlineVideoView;

    invoke-virtual {v0}, Lcom/twitter/library/media/player/InlineVideoView;->pause()V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/MediaPlayerView;->pause()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onResume()V

    .line 322
    iget v0, p0, Lcom/twitter/android/MediaPlayerActivity;->g:I

    if-lez v0, :cond_1

    .line 323
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->i:Z

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    iget v1, p0, Lcom/twitter/android/MediaPlayerActivity;->g:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/MediaPlayerView;->setStartPosition(I)V

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/MediaPlayerActivity;->g:I

    .line 328
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 334
    iget-boolean v0, p0, Lcom/twitter/android/MediaPlayerActivity;->i:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Lcom/twitter/library/media/player/InlineVideoView;

    invoke-virtual {v0}, Lcom/twitter/library/media/player/InlineVideoView;->getCurrentPosition()I

    move-result v0

    .line 339
    :goto_0
    iput v0, p0, Lcom/twitter/android/MediaPlayerActivity;->g:I

    .line 340
    const-string/jumbo v1, "seek"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/MediaPlayerView;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->s:Lasd;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->s:Lasd;

    invoke-virtual {v0}, Lasd;->a()I

    move-result v0

    .line 357
    if-lez v0, :cond_0

    .line 358
    invoke-static {p0}, Lcom/twitter/library/vineloops/VineLoopAggregator;->a(Landroid/content/Context;)Lcom/twitter/library/vineloops/VineLoopAggregator;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/MediaPlayerActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/vineloops/VineLoopAggregator;->a(Ljava/lang/String;I)V

    .line 360
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    .line 359
    invoke-static {v0, v1}, Lcom/twitter/library/vineloops/c;->a(Landroid/content/Context;Lcom/twitter/library/client/bd;)Lcom/twitter/library/vineloops/c;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/twitter/library/vineloops/c;->a()V

    .line 364
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onStop()V

    .line 365
    return-void
.end method
