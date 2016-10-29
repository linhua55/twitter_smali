.class public Lcom/twitter/android/revenue/card/ag;
.super Lcom/twitter/android/revenue/card/p;
.source "Twttr"


# instance fields
.field private c:Lcom/twitter/android/revenue/card/CardMediaView;

.field private d:Lcom/twitter/media/ui/image/MediaImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lclm;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/revenue/card/p;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lclm;)V

    .line 31
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->q:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/card/CardMediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 34
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/revenue/y;->b(Landroid/content/res/Resources;)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/revenue/card/ag;->a([F)V

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/twitter/android/revenue/card/p;->a()V

    .line 73
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->d:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 74
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 68
    return-void
.end method

.method public p()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    const-string/jumbo v0, "promo_image"

    iget-object v1, p0, Lcom/twitter/android/revenue/card/ag;->a:Lclm;

    invoke-static {v0, v1}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Lcom/twitter/android/revenue/card/CardMediaView;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/ag;->q:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/twitter/android/revenue/card/CardMediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ag;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    .line 46
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0114

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 47
    iget-object v2, p0, Lcom/twitter/android/revenue/card/ag;->q:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/revenue/card/ag;->x:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-static {v2, v3}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/twitter/android/revenue/card/ag;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v2, v0, v4, v4, v0}, Lcom/twitter/android/revenue/card/CardMediaView;->a(FFFF)V

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    const v2, 0x7f130210

    invoke-virtual {v0, v2}, Lcom/twitter/android/revenue/card/CardMediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ag;->d:Lcom/twitter/media/ui/image/MediaImageView;

    .line 53
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const-string/jumbo v2, "card"

    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setImageType(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {v1, v2}, Lcln;->a(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 55
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->d:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, v1, Lcln;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 56
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 58
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/revenue/card/ag;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    invoke-virtual {v2, v0, v0, v4, v4}, Lcom/twitter/android/revenue/card/CardMediaView;->a(FFFF)V

    goto :goto_0
.end method

.method public q()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ag;->c:Lcom/twitter/android/revenue/card/CardMediaView;

    return-object v0
.end method
