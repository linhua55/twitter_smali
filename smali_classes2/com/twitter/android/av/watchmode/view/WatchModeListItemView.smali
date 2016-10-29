.class public Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/av/cc;
.implements Lcom/twitter/android/av/watchmode/view/z;
.implements Lcom/twitter/library/av/control/f;
.implements Lcom/twitter/library/widget/c;


# instance fields
.field A:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final B:Lcom/twitter/android/av/watchmode/view/s;

.field private final C:Lcom/twitter/android/av/watchmode/view/j;

.field private D:Lcom/twitter/android/av/watchmode/view/p;

.field public a:Lcom/twitter/android/av/watchmode/view/e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/twitter/android/av/watchmode/view/e;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/twitter/android/av/video/VideoContainerHost;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Lcom/twitter/android/av/AutoPlayBadgeView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field h:Lcom/twitter/android/av/watchmode/view/TweetSummaryView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field i:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field k:Lcom/twitter/android/av/watchmode/view/WatchModeScalingFrameLayout;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field l:Landroid/widget/RelativeLayout$LayoutParams;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field m:Landroid/widget/RelativeLayout$LayoutParams;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field n:Landroid/widget/RelativeLayout$LayoutParams;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field o:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field p:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field q:Lcom/twitter/library/av/playback/AVDataSource;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field r:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field s:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field t:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field u:Lcom/twitter/android/av/video/k;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field v:Landroid/widget/FrameLayout;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field w:Lcav;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field x:Lcom/twitter/android/av/ViewCountBadgeView;

.field y:Z

.field z:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    .line 200
    new-instance v4, Lcom/twitter/android/av/watchmode/view/s;

    invoke-direct {v4}, Lcom/twitter/android/av/watchmode/view/s;-><init>()V

    new-instance v5, Lcom/twitter/android/av/watchmode/view/n;

    invoke-direct {v5}, Lcom/twitter/android/av/watchmode/view/n;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/android/av/watchmode/view/s;Lcom/twitter/android/av/watchmode/view/n;)V

    .line 202
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/android/av/watchmode/view/s;Lcom/twitter/android/av/watchmode/view/n;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 208
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    iput v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->o:F

    .line 153
    iput v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    .line 182
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->A:F

    .line 209
    iput-object p4, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->B:Lcom/twitter/android/av/watchmode/view/s;

    .line 210
    invoke-virtual {p5, p0}, Lcom/twitter/android/av/watchmode/view/n;->a(Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;)Lcom/twitter/android/av/watchmode/view/j;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->C:Lcom/twitter/android/av/watchmode/view/j;

    .line 211
    return-void
.end method

.method private c(Z)V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->D:Lcom/twitter/android/av/watchmode/view/p;

    if-eqz v0, :cond_0

    .line 594
    if-eqz p1, :cond_1

    .line 595
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->D:Lcom/twitter/android/av/watchmode/view/p;

    invoke-interface {v0}, Lcom/twitter/android/av/watchmode/view/p;->d()V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->D:Lcom/twitter/android/av/watchmode/view/p;

    invoke-interface {v0}, Lcom/twitter/android/av/watchmode/view/p;->f()V

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->u:Lcom/twitter/android/av/video/k;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->u:Lcom/twitter/android/av/video/k;

    iget-object v0, v0, Lcom/twitter/android/av/video/k;->f:Lcom/twitter/library/av/model/c;

    invoke-virtual {v0}, Lcom/twitter/library/av/model/c;->c()Z

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 500
    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a(F)V

    .line 501
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->b(Z)V

    .line 687
    return-void
.end method


# virtual methods
.method a()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->t:Z

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->d()V

    .line 320
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->C:Lcom/twitter/android/av/watchmode/view/j;

    invoke-virtual {v0}, Lcom/twitter/android/av/watchmode/view/j;->a()V

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a(Z)V

    .line 323
    :cond_0
    return-void
.end method

.method a(F)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 518
    iget v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->o:F

    div-float v0, p1, v0

    .line 519
    iget v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    mul-float/2addr v0, v1

    .line 523
    div-float v0, p1, v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 524
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->d:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 525
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->t:Z

    if-eqz v0, :cond_1

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a:Lcom/twitter/android/av/watchmode/view/e;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a:Lcom/twitter/android/av/watchmode/view/e;

    invoke-virtual {v0}, Lcom/twitter/android/av/watchmode/view/e;->a()V

    .line 617
    :cond_1
    return-void
.end method

.method a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 327
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 328
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 329
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->h:Lcom/twitter/android/av/watchmode/view/TweetSummaryView;

    invoke-virtual {v1, p1, p2}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 332
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->v:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 340
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->t:Z

    .line 534
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->setIsFullscreen(Z)V

    .line 535
    return-void
.end method

.method public a(ZJ)V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method b()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 399
    iget v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 403
    iget v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 408
    :goto_0
    sub-float v0, v2, v0

    .line 409
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 410
    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 411
    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 413
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->e:Lcom/twitter/android/av/AutoPlayBadgeView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/AutoPlayBadgeView;->setAlpha(F)V

    .line 414
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->t:Z

    if-eqz v0, :cond_1

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a:Lcom/twitter/android/av/watchmode/view/e;

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a:Lcom/twitter/android/av/watchmode/view/e;

    invoke-virtual {v0}, Lcom/twitter/android/av/watchmode/view/e;->b()V

    .line 630
    :cond_1
    return-void
.end method

.method b(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 698
    iget v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 699
    iget v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->A:F

    .line 700
    if-eqz p1, :cond_0

    const/16 v0, 0x190

    .line 706
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->b:Lcom/twitter/android/av/watchmode/view/e;

    invoke-virtual {v2, v1, v0}, Lcom/twitter/android/av/watchmode/view/e;->a(FI)V

    .line 707
    return-void

    .line 702
    :cond_1
    iget v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->A:F

    iget v2, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    iget v3, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->A:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 703
    goto :goto_0
.end method

.method c()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->g()V

    .line 428
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->l:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->setTweetSummaryViewContainerLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 429
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->setShouldShowFullscreenButton(Z)V

    .line 430
    return-void
.end method

.method d()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->i()V

    .line 438
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->m:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->setTweetSummaryViewContainerLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 439
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    invoke-direct {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->setShouldShowFullscreenButton(Z)V

    .line 440
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->v:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 441
    return-void
.end method

.method e()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->g()V

    .line 460
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->setTweetSummaryViewContainerLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 461
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->setShouldShowFullscreenButton(Z)V

    .line 462
    return-void
.end method

.method f()V
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xc

    const/4 v4, 0x3

    const/4 v3, -0x1

    .line 481
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->h:Lcom/twitter/android/av/watchmode/view/TweetSummaryView;

    invoke-virtual {v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 482
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->l:Landroid/widget/RelativeLayout$LayoutParams;

    .line 483
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->l:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 484
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->l:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 486
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->m:Landroid/widget/RelativeLayout$LayoutParams;

    .line 487
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->m:Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f1307a7

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 488
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->m:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 490
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->n:Landroid/widget/RelativeLayout$LayoutParams;

    .line 491
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 492
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 493
    return-void
.end method

.method g()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->d:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 510
    return-void
.end method

.method public getAutoPlayableItem()Lcom/twitter/library/widget/a;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->c:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->getAutoPlayableItem()Lcom/twitter/library/widget/a;

    move-result-object v0

    return-object v0
.end method

.method public getChromeView()Lcom/twitter/library/av/control/h;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    return-object v0
.end method

.method public getExpandedHeight()I
    .locals 3

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 659
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->h:Lcom/twitter/android/av/watchmode/view/TweetSummaryView;

    invoke-virtual {v1}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->getPreferredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->o:F

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a()V

    .line 368
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->getChromeView()Lcom/twitter/library/av/control/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/control/h;->f()Z

    .line 680
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->z:Z

    .line 302
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a()V

    .line 304
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->c()V

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->requestLayout()V

    .line 310
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->d()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 222
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 223
    const v0, 0x7f1307a7

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->d:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    .line 224
    const v0, 0x7f1307a9

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/video/VideoContainerHost;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->c:Lcom/twitter/android/av/video/VideoContainerHost;

    .line 225
    const v0, 0x7f1307ab

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->i:Landroid/view/ViewGroup;

    .line 226
    invoke-static {}, Lcom/twitter/android/av/bs;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->y:Z

    .line 228
    iget-boolean v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->y:Z

    if-eqz v0, :cond_0

    .line 229
    const v0, 0x7f04003f

    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->i:Landroid/view/ViewGroup;

    invoke-static {v1, v0, v2}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 233
    :goto_0
    const v0, 0x7f13018e

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/AutoPlayBadgeView;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->e:Lcom/twitter/android/av/AutoPlayBadgeView;

    .line 234
    const v0, 0x7f130194

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/ViewCountBadgeView;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->x:Lcom/twitter/android/av/ViewCountBadgeView;

    .line 236
    const v0, 0x7f1307ac

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->f:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f1307ad

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->g:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f1306d9

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->h:Lcom/twitter/android/av/watchmode/view/TweetSummaryView;

    .line 239
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->d:Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 240
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->s:Landroid/content/res/ColorStateList;

    .line 241
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->r:Landroid/content/res/ColorStateList;

    .line 242
    const v0, 0x7f1304d6

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    .line 243
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->setOnChromeVisibilityChangeListener(Lcom/twitter/android/av/cc;)V

    .line 244
    const v0, 0x7f1307a8

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/watchmode/view/WatchModeScalingFrameLayout;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->k:Lcom/twitter/android/av/watchmode/view/WatchModeScalingFrameLayout;

    .line 245
    new-instance v0, Lcom/twitter/android/av/watchmode/view/e;

    const v1, 0x7f1307aa

    invoke-virtual {p0, v1}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/av/watchmode/view/e;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->b:Lcom/twitter/android/av/watchmode/view/e;

    .line 246
    const v0, 0x7f1307ae

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->v:Landroid/widget/FrameLayout;

    .line 247
    new-instance v0, Lcav;

    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->v:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcav;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->w:Lcav;

    .line 248
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->w:Lcav;

    invoke-static {}, Lcay;->a()Lcay;

    move-result-object v1

    invoke-virtual {v1}, Lcay;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcav;->a(Ljava/util/List;)V

    .line 249
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->h:Lcom/twitter/android/av/watchmode/view/TweetSummaryView;

    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->w:Lcav;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->setHeartAnimationOverlay(Lcav;)V

    .line 250
    new-instance v0, Lcom/twitter/android/av/watchmode/view/e;

    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->v:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcom/twitter/android/av/watchmode/view/e;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a:Lcom/twitter/android/av/watchmode/view/e;

    .line 252
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->f()V

    .line 253
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->b()V

    .line 254
    invoke-direct {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j()V

    .line 255
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->setControlsListener(Lcom/twitter/library/av/control/f;)V

    .line 256
    invoke-virtual {p0, p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void

    .line 231
    :cond_0
    const v0, 0x7f04003d

    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->i:Landroid/view/ViewGroup;

    invoke-static {v1, v0, v2}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->B:Lcom/twitter/android/av/watchmode/view/s;

    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/watchmode/view/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->c()V

    .line 346
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->B:Lcom/twitter/android/av/watchmode/view/s;

    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/watchmode/view/s;->a(Landroid/content/Context;)I

    move-result v0

    .line 347
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 353
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->h:Lcom/twitter/android/av/watchmode/view/TweetSummaryView;

    iget-object v0, v0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->e:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0}, Lcom/twitter/android/widget/EngagementActionBar;->getFavoriteButton()Landroid/view/View;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_1

    .line 355
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->w:Lcav;

    invoke-virtual {v1, v0}, Lcav;->a(Landroid/view/View;)V

    .line 358
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 359
    return-void

    .line 348
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->t:Z

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->d()V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 2

    .prologue
    .line 667
    if-eqz p1, :cond_1

    const v0, 0x3f0ccccd    # 0.55f

    .line 668
    :goto_0
    iget v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->A:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 669
    iput v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->A:F

    .line 670
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->b(Z)V

    .line 672
    :cond_0
    return-void

    .line 667
    :cond_1
    const v0, 0x3f333333    # 0.7f

    goto :goto_0
.end method

.method public setExpandedFraction(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 372
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 373
    iget v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 374
    iput v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    .line 376
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->b()V

    .line 377
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->h:Lcom/twitter/android/av/watchmode/view/TweetSummaryView;

    iget v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->setExpandedFraction(F)V

    .line 378
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->k:Lcom/twitter/android/av/watchmode/view/WatchModeScalingFrameLayout;

    iget v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/watchmode/view/WatchModeScalingFrameLayout;->setExpandedFraction(F)V

    .line 380
    iget v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a()V

    .line 382
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    invoke-virtual {v0}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->o()V

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j()V

    .line 386
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->requestLayout()V

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    iget v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->p:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->setCollapsed(Z)V

    .line 390
    return-void

    .line 389
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFullscreenListener(Lcom/twitter/android/av/watchmode/view/p;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->D:Lcom/twitter/android/av/watchmode/view/p;

    .line 651
    return-void
.end method

.method protected setScrollClickListener(Lcom/twitter/android/av/watchmode/view/t;)V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->setScrollClickListener(Lcom/twitter/android/av/watchmode/view/t;)V

    .line 644
    return-void
.end method

.method setTweetSummaryViewContainerLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    :cond_0
    return-void
.end method

.method public setVideoContainerConfig(Lcom/twitter/android/av/video/k;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    if-eqz p1, :cond_4

    .line 261
    iput-object p1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->u:Lcom/twitter/android/av/video/k;

    .line 262
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->c:Lcom/twitter/android/av/video/VideoContainerHost;

    iget-object v3, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->u:Lcom/twitter/android/av/video/k;

    invoke-virtual {v0, v3}, Lcom/twitter/android/av/video/VideoContainerHost;->a(Lcom/twitter/android/av/video/k;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->c:Lcom/twitter/android/av/video/VideoContainerHost;

    iget-object v3, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->u:Lcom/twitter/android/av/video/k;

    invoke-virtual {v0, v3}, Lcom/twitter/android/av/video/VideoContainerHost;->setVideoContainerConfig(Lcom/twitter/android/av/video/k;)V

    .line 264
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->requestLayout()V

    .line 273
    :goto_0
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/twitter/android/av/video/k;->a:Lcom/twitter/library/av/playback/AVDataSource;

    :goto_1
    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->q:Lcom/twitter/library/av/playback/AVDataSource;

    .line 275
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->q:Lcom/twitter/library/av/playback/AVDataSource;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->q:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-static {v0}, Lcom/twitter/library/av/playback/h;->a(Lcom/twitter/library/av/playback/AVDataSource;)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->o:F

    .line 277
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->q:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->c()Lcom/twitter/model/core/Tweet;

    move-result-object v4

    .line 278
    if-eqz v4, :cond_6

    move v3, v2

    .line 279
    :goto_2
    if-eqz v4, :cond_0

    .line 280
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->g:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v5, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    invoke-static {v4}, Lcom/twitter/library/av/playback/bm;->e(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->setShouldShowControls(Z)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->e:Lcom/twitter/android/av/AutoPlayBadgeView;

    iget-object v3, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->q:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-virtual {v0, v3}, Lcom/twitter/android/av/AutoPlayBadgeView;->setAVDataSource(Lcom/twitter/library/av/playback/AVDataSource;)V

    .line 289
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->x:Lcom/twitter/android/av/ViewCountBadgeView;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->x:Lcom/twitter/android/av/ViewCountBadgeView;

    iget-object v3, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->q:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-virtual {v0, v3}, Lcom/twitter/android/av/ViewCountBadgeView;->setAVDataSource(Lcom/twitter/library/av/playback/AVDataSource;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->q:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-interface {v0}, Lcom/twitter/library/av/playback/AVDataSource;->c()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iget-object v3, p1, Lcom/twitter/android/av/video/k;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 293
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->j:Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;

    iget-object v3, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->q:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-interface {v3}, Lcom/twitter/library/av/playback/AVDataSource;->d()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    :goto_4
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/WatchModeVideoPlayerChromeView;->setShouldPlayPauseOnTap(Z)V

    .line 295
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->setExpandedFraction(F)V

    .line 296
    :cond_3
    return-void

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->c:Lcom/twitter/android/av/video/VideoContainerHost;

    invoke-virtual {v0}, Lcom/twitter/android/av/video/VideoContainerHost;->a()V

    goto/16 :goto_0

    .line 273
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 278
    :cond_6
    const/16 v0, 0x8

    move v3, v0

    goto :goto_2

    :cond_7
    move v0, v2

    .line 282
    goto :goto_3

    :cond_8
    move v1, v2

    .line 293
    goto :goto_4
.end method

.method public w()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public x()V
    .locals 3

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->z:Z

    if-eqz v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->t:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 557
    :goto_1
    invoke-direct {p0, v0}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->c(Z)V

    .line 559
    if-eqz v0, :cond_2

    .line 560
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->C:Lcom/twitter/android/av/watchmode/view/j;

    new-instance v2, Lcom/twitter/android/av/watchmode/view/q;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/av/watchmode/view/q;-><init>(Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;Z)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/av/watchmode/view/j;->b(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 556
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 573
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->C:Lcom/twitter/android/av/watchmode/view/j;

    new-instance v2, Lcom/twitter/android/av/watchmode/view/r;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/av/watchmode/view/r;-><init>(Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;Z)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/av/watchmode/view/j;->a(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public y()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public z()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method
