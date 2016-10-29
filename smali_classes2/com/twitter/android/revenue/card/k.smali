.class public Lcom/twitter/android/revenue/card/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/a;


# instance fields
.field private final a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

.field private final b:Lcom/twitter/android/av/video/j;

.field private c:Lcom/twitter/android/av/video/h;

.field private d:Z

.field private e:Z

.field private f:Lcom/twitter/android/revenue/card/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/av/video/j;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/revenue/card/k;->e:Z

    .line 46
    iput-object p2, p0, Lcom/twitter/android/revenue/card/k;->b:Lcom/twitter/android/av/video/j;

    .line 48
    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/k;->a(Landroid/content/Context;)Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/k;->a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    .line 50
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    new-instance v1, Lcom/twitter/android/revenue/card/l;

    invoke-direct {v1, p0}, Lcom/twitter/android/revenue/card/l;-><init>(Lcom/twitter/android/revenue/card/k;)V

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/revenue/card/k;)Lcom/twitter/android/revenue/card/m;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->f:Lcom/twitter/android/revenue/card/m;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/twitter/media/ui/image/AspectRatioFrameLayout;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    invoke-direct {v0, p1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->e()V

    .line 81
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 6

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->b:Lcom/twitter/android/av/video/j;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/k;->a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/av/video/j;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Landroid/view/View$OnClickListener;)Lcom/twitter/android/av/video/h;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    .line 68
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    sget-object v1, Lbxa;->c:Lbxa;

    sget-object v2, Lcom/twitter/library/av/VideoPlayerView$Mode;->a:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/av/video/h;->a(Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 69
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    invoke-interface {p2}, Lcom/twitter/library/av/playback/AVDataSource;->n()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 70
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/k;->d:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->b()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/revenue/card/k;->d:Z

    .line 75
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/android/revenue/card/m;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/twitter/android/revenue/card/k;->f:Lcom/twitter/android/revenue/card/m;

    .line 62
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/video/h;->a(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->at_()Lcom/twitter/library/av/playback/ba;

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
    .line 119
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->ay_()Lcom/twitter/library/av/playback/ba;

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
    .line 90
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->a()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    .line 94
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/k;->e:Z

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->b()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/revenue/card/k;->d:Z

    goto :goto_0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    return-object v0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->c:Lcom/twitter/android/av/video/h;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/h;->h()Lcom/twitter/library/av/playback/ba;

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
    .line 137
    iget-object v0, p0, Lcom/twitter/android/revenue/card/k;->a:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    return-object v0
.end method
