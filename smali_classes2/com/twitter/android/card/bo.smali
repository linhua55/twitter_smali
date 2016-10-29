.class public Lcom/twitter/android/card/bo;
.super Lcom/twitter/android/card/a;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/a;


# instance fields
.field final z:Lcom/twitter/android/av/video/VideoContainerHost;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/android/card/k;

    invoke-direct {v0, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twitter/android/card/e;

    invoke-direct {v1, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twitter/android/card/bo;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 45
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V
    .locals 7

    .prologue
    .line 49
    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04022c

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/twitter/android/card/bp;

    invoke-direct {v6}, Lcom/twitter/android/card/bp;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 49
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/card/bo;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Landroid/widget/LinearLayout;Lcom/twitter/android/card/b;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Landroid/widget/LinearLayout;Lcom/twitter/android/card/b;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct/range {p0 .. p6}, Lcom/twitter/android/card/a;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Landroid/widget/LinearLayout;Lcom/twitter/android/card/b;)V

    .line 60
    iget-object v0, p0, Lcom/twitter/android/card/bo;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f1300f8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/video/VideoContainerHost;

    iput-object v0, p0, Lcom/twitter/android/card/bo;->z:Lcom/twitter/android/av/video/VideoContainerHost;

    .line 61
    return-void
.end method


# virtual methods
.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/card/a;->a(JLcom/twitter/model/core/TwitterUser;)V

    .line 78
    iget-object v0, p0, Lcom/twitter/android/card/bo;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/twitter/android/card/bo;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 6

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/twitter/android/card/a;->a(Lcom/twitter/library/card/av;)V

    .line 66
    invoke-virtual {p0}, Lcom/twitter/android/card/bo;->l()Landroid/app/Activity;

    move-result-object v1

    .line 67
    iget-object v0, p0, Lcom/twitter/android/card/bo;->w:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/library/card/CardContext;->a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/twitter/model/core/Tweet;

    .line 68
    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Lcom/twitter/android/av/video/k;

    new-instance v1, Lcom/twitter/library/av/playback/TweetAVDataSource;

    invoke-direct {v1, v2}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    iget-object v2, p0, Lcom/twitter/android/card/bo;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    sget-object v3, Lbxa;->c:Lbxa;

    sget-object v4, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/video/k;-><init>(Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/twitter/android/card/bo;->z:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/video/VideoContainerHost;->setVideoContainerConfig(Lcom/twitter/android/av/video/k;)V

    .line 73
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/bo;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/twitter/android/card/bo;->j()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/twitter/android/card/bo;->j()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/twitter/android/card/bo;->j()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->c()Z

    move-result v0

    return v0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/twitter/android/card/bo;->j()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/twitter/android/card/bo;->j()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method j()Lcom/twitter/library/widget/a;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/twitter/android/card/bo;->z:Lcom/twitter/android/av/video/VideoContainerHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/bo;->z:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->getAutoPlayableItem()Lcom/twitter/library/widget/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/widget/a;->j:Lcom/twitter/library/widget/a;

    goto :goto_0
.end method
