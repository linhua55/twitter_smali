.class public Latg;
.super Lcjj;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcjj",
        "<",
        "Latj;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcjj;-><init>(Landroid/app/Activity;)V

    .line 36
    return-void
.end method

.method private static a(Landroid/app/Activity;I)Landroid/view/View;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 96
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    const/4 v2, 0x3

    const v3, 0x7f1303db

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const v1, 0x7f13007a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Latg;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Latg;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setFromMemoryOnly(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public a(Latj;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 40
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v0

    invoke-virtual {v0}, Lcam;->g()Z

    move-result v1

    .line 41
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->m()Z

    move-result v2

    .line 42
    iget-object v3, p1, Latj;->a:Lcom/twitter/model/core/Tweet;

    .line 43
    invoke-virtual {p0}, Latg;->d()Landroid/app/Activity;

    move-result-object v4

    .line 45
    iget-object v0, p0, Latg;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    const v0, 0x7f040285

    invoke-static {v4, v0}, Latg;->a(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latg;->b:Landroid/view/View;

    .line 49
    :cond_0
    iget-object v5, p0, Latg;->b:Landroid/view/View;

    .line 51
    const v0, 0x7f1305f0

    .line 52
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;

    .line 53
    sget-object v6, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->b:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 54
    invoke-virtual {p0, v4, p1, v3, v6}, Latg;->a(Landroid/app/Activity;Ljava/lang/Object;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    move-result-object v6

    .line 55
    iput-object v6, p0, Latg;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    .line 56
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f00d1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setMediaDividerSize(I)V

    .line 58
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {v0, v6}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->addView(Landroid/view/View;)V

    .line 62
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v4, p1, Latj;->c:Lcom/twitter/library/media/widget/aa;

    invoke-virtual {v6, v4}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setOnMediaClickListener(Lcom/twitter/library/media/widget/aa;)V

    .line 67
    invoke-virtual {v6, v3}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 68
    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    invoke-virtual {v6, v4}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setCard(Lclw;)V

    .line 74
    :goto_0
    invoke-virtual {v6}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    invoke-virtual {v6, v1}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->a(Z)V

    .line 76
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v6, v3}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setSingleImageMinAspectRatio(F)V

    .line 78
    invoke-virtual {v6, v2}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->c(Z)V

    .line 79
    if-nez v1, :cond_1

    .line 80
    invoke-virtual {v6}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->getMediaCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 81
    invoke-virtual {v6}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->getMediaItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/media/widget/ab;

    iget-object v1, v1, Lcom/twitter/library/media/widget/ab;->b:Lcom/twitter/util/math/Size;

    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->g()F

    move-result v1

    .line 84
    :goto_1
    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v1, v2, v3}, Lcom/twitter/util/math/b;->a(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 89
    :cond_1
    :goto_2
    return-void

    .line 72
    :cond_2
    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v4

    iget-object v4, v4, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    iget-object v3, v3, Lcom/twitter/model/core/Tweet;->x:Ljava/lang/String;

    invoke-virtual {v6, v4, v3}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->a(Ljava/lang/Iterable;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    const v1, 0x3fe38e39

    goto :goto_1

    .line 87
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Latj;

    invoke-virtual {p0, p1}, Latg;->a(Latj;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Latg;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Latg;->a:Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->f()V

    .line 124
    :cond_0
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Latg;->b:Landroid/view/View;

    return-object v0
.end method
