.class public Lasx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/a;
.implements Lcom/twitter/library/widget/renderablecontent/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/library/widget/a;",
        "Lcom/twitter/library/widget/renderablecontent/c",
        "<",
        "Lcom/twitter/library/widget/renderablecontent/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/android/av/video/VideoContainerHost;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Lcom/twitter/android/av/video/f;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

.field private final e:Landroid/view/View;

.field private final f:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 1

    .prologue
    .line 53
    invoke-static {p1, p2}, Lasx;->a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/android/av/video/g;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lasx;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/av/video/g;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/av/video/g;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lasx;->c:Ljava/lang/ref/WeakReference;

    .line 60
    iput-object p2, p0, Lasx;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 61
    invoke-virtual {p3, p1}, Lcom/twitter/android/av/video/g;->a(Landroid/app/Activity;)Lcom/twitter/android/av/video/f;

    move-result-object v0

    iput-object v0, p0, Lasx;->b:Lcom/twitter/android/av/video/f;

    .line 62
    iget-object v0, p0, Lasx;->b:Lcom/twitter/android/av/video/f;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/f;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lasx;->e:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lasx;->e:Landroid/view/View;

    const v1, 0x7f130384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    iput-object v0, p0, Lasx;->f:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    .line 64
    return-void
.end method

.method static a(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/android/av/video/g;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/twitter/android/av/video/g;

    invoke-direct {v0, p0}, Lcom/twitter/android/av/video/g;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/android/av/video/g;

    .line 202
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04037c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/av/video/g;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lasx;->b:Lcom/twitter/android/av/video/f;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lasx;->b:Lcom/twitter/android/av/video/f;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/f;->b()V

    .line 122
    :cond_0
    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->a()V

    .line 125
    :cond_1
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public a(Lcom/twitter/library/widget/renderablecontent/b;)V
    .locals 10

    .prologue
    .line 68
    iget-object v0, p0, Lasx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 69
    invoke-interface {p1}, Lcom/twitter/library/widget/renderablecontent/b;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/Tweet;

    .line 70
    invoke-interface {p1}, Lcom/twitter/library/widget/renderablecontent/b;->b()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v4

    .line 71
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 73
    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcug;->c(Ljava/lang/Iterable;)Lcom/twitter/model/core/MediaEntity;

    move-result-object v2

    .line 76
    iget-object v0, p0, Lasx;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, v1, :cond_0

    if-eqz v2, :cond_0

    .line 77
    iget-object v0, p0, Lasx;->b:Lcom/twitter/android/av/video/f;

    iget-object v1, v2, Lcom/twitter/model/core/MediaEntity;->k:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/f;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 78
    iget-object v0, p0, Lasx;->b:Lcom/twitter/android/av/video/f;

    iget-object v1, v2, Lcom/twitter/model/core/MediaEntity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/f;->a(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lasx;->b:Lcom/twitter/android/av/video/f;

    iget-object v1, v2, Lcom/twitter/model/core/MediaEntity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/f;->b(Ljava/lang/String;)V

    .line 80
    iget-object v6, p0, Lasx;->b:Lcom/twitter/android/av/video/f;

    new-instance v0, Lasy;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lasy;-><init>(Lasx;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/app/Activity;)V

    invoke-virtual {v6, v0}, Lcom/twitter/android/av/video/f;->a(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_0
    new-instance v1, Lcom/twitter/library/av/playback/TweetAVDataSource;

    invoke-direct {v1, v3}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    .line 94
    iget-object v0, p0, Lasx;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v2, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-eq v0, v2, :cond_3

    .line 95
    invoke-static {v1}, Lcom/twitter/library/av/model/c;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/model/c;

    move-result-object v8

    .line 97
    :goto_0
    new-instance v2, Lcom/twitter/android/av/video/k;

    sget-object v5, Lbxa;->c:Lbxa;

    sget-object v6, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lcom/twitter/android/av/video/k;-><init>(Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;Landroid/view/View$OnClickListener;Lcom/twitter/library/av/model/c;)V

    .line 99
    const v0, 0x7f0403fa

    iget-object v3, p0, Lasx;->f:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    const/4 v4, 0x0

    .line 100
    invoke-virtual {v9, v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/video/VideoContainerHost;

    .line 99
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/video/VideoContainerHost;

    iput-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    .line 101
    iget-object v0, p0, Lasx;->f:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    iget-object v3, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lasx;->f:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    invoke-static {v1}, Lcom/twitter/library/av/playback/h;->a(Lcom/twitter/library/av/playback/AVDataSource;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;->setAspectRatio(F)V

    .line 103
    iget-object v0, p0, Lasx;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lasx;->f:Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/twitter/library/widget/LandscapeAwareAspectRatioFrameLayout;->a()V

    .line 107
    :cond_1
    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0, v2}, Lcom/twitter/android/av/video/VideoContainerHost;->setVideoContainerConfig(Lcom/twitter/android/av/video/k;)V

    .line 108
    iget-object v0, p0, Lasx;->d:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    sget-object v1, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, v1, :cond_2

    .line 109
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    const/4 v1, 0x3

    const v2, 0x7f1303db

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    iget-object v1, p0, Lasx;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    :cond_2
    return-void

    .line 96
    :cond_3
    invoke-static {}, Lcom/twitter/android/revenue/z;->i()Lcom/twitter/library/av/model/c;

    move-result-object v8

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/twitter/library/widget/renderablecontent/b;

    invoke-virtual {p0, p1}, Lasx;->a(Lcom/twitter/library/widget/renderablecontent/b;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public ao_()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public ap_()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public aq_()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->getAutoPlayableItem()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->getAutoPlayableItem()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lasx;->b:Lcom/twitter/android/av/video/f;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lasx;->b:Lcom/twitter/android/av/video/f;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/f;->a()V

    .line 132
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->getAutoPlayableItem()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lasx;->e:Landroid/view/View;

    return-object v0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->getAutoPlayableItem()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/ba;->a:Lcom/twitter/library/av/playback/ba;

    goto :goto_0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasx;->a:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->getAutoPlayableItem()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->i()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
