.class public Lcom/twitter/android/av/AutoPlayViewCountChromeView;
.super Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;
.source "Twttr"


# instance fields
.field protected e:Lcom/twitter/android/av/ViewCountBadgeView;

.field protected f:Landroid/view/View;

.field g:I

.field h:Landroid/animation/AnimatorSet;

.field i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/ViewCountBadgeView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/ViewCountBadgeView;->setVisibility(I)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/ViewCountBadgeView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->removeAllViews()V

    .line 52
    iput-object p1, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->b:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 53
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->g:I

    .line 54
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->h:Landroid/animation/AnimatorSet;

    .line 56
    invoke-virtual {p0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 58
    const v0, 0x7f04003f

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    const v0, 0x7f13018e

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/AutoPlayBadgeView;

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    .line 60
    const v0, 0x7f130194

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/ViewCountBadgeView;

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    .line 61
    const v0, 0x7f130193

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->f:Landroid/view/View;

    .line 63
    const v0, 0x7f04003e

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    const v0, 0x7f13018d

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->c:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->a:Lcom/twitter/android/av/AutoPlayBadgeView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/AutoPlayBadgeView;->setAVDataSource(Lcom/twitter/library/av/playback/AVDataSource;)V

    .line 70
    iget-object v1, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/ViewCountBadgeView;->setAVDataSource(Lcom/twitter/library/av/playback/AVDataSource;)V

    .line 71
    invoke-direct {p0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->p()V

    .line 74
    :cond_0
    new-instance v0, Lcom/twitter/android/av/ad;

    invoke-direct {v0, p0}, Lcom/twitter/android/av/ad;-><init>(Lcom/twitter/android/av/AutoPlayViewCountChromeView;)V

    iput-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 87
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 100
    iget-boolean v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->d:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/ViewCountBadgeView;->setVisibility(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->p()V

    goto :goto_0
.end method

.method public j()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->j()V

    .line 92
    invoke-direct {p0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->p()V

    .line 93
    return-void
.end method

.method protected m()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->p()V

    .line 113
    invoke-super {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->m()V

    .line 114
    return-void
.end method

.method protected n()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->p()V

    .line 122
    invoke-super {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->n()V

    .line 123
    return-void
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->h:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->p()V

    .line 135
    invoke-super {p0}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->o()V

    .line 136
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/ViewCountBadgeView;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 158
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->onLayout(ZIIII)V

    .line 160
    iget-object v1, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 162
    if-eqz v0, :cond_0

    .line 163
    iget-object v2, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->f:Landroid/view/View;

    const-string/jumbo v3, "right"

    new-array v4, v9, [I

    aput v0, v4, v7

    aput v1, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 166
    if-ge v0, v1, :cond_1

    .line 168
    iget-object v3, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->e:Lcom/twitter/android/av/ViewCountBadgeView;

    const-string/jumbo v4, "left"

    new-array v5, v9, [I

    iget v6, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->g:I

    add-int/2addr v0, v6

    aput v0, v5, v7

    iget v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->g:I

    add-int/2addr v0, v1

    aput v0, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->h:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 171
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/AutoPlayViewCountChromeView;->i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 178
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/av/AutoPlayVideoPlayerChromeView;->onLayout(ZIIII)V

    goto :goto_0
.end method
