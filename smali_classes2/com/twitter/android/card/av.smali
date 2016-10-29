.class public Lcom/twitter/android/card/av;
.super Lcom/twitter/android/card/a;
.source "Twttr"


# instance fields
.field A:Lcom/twitter/android/card/bn;

.field protected z:Lcom/twitter/android/card/VideoPlayerView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/twitter/android/card/k;

    invoke-direct {v0, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twitter/android/card/e;

    invoke-direct {v1, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twitter/android/card/av;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V
    .locals 7

    .prologue
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04022c

    new-instance v2, Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/twitter/android/card/aw;

    invoke-direct {v6}, Lcom/twitter/android/card/aw;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/card/av;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Landroid/widget/LinearLayout;Lcom/twitter/android/card/b;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Landroid/widget/LinearLayout;Lcom/twitter/android/card/b;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct/range {p0 .. p6}, Lcom/twitter/android/card/a;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Landroid/widget/LinearLayout;Lcom/twitter/android/card/b;)V

    .line 45
    iget-object v0, p0, Lcom/twitter/android/card/av;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f1300f8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/VideoPlayerView;

    iput-object v0, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/twitter/android/card/a;->a()V

    .line 88
    iget-object v0, p0, Lcom/twitter/android/card/av;->A:Lcom/twitter/android/card/bn;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/twitter/android/card/av;->A:Lcom/twitter/android/card/bn;

    invoke-interface {v0}, Lcom/twitter/android/card/bn;->a()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/card/av;->A:Lcom/twitter/android/card/bn;

    .line 92
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 5

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/twitter/android/card/a;->a(Lcom/twitter/library/card/av;)V

    .line 52
    invoke-virtual {p0}, Lcom/twitter/android/card/av;->l()Landroid/app/Activity;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    iget-object v1, p0, Lcom/twitter/android/card/av;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/library/util/an;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Lcom/twitter/android/card/bs;

    iget-object v2, p0, Lcom/twitter/android/card/av;->m:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/card/bs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/twitter/android/card/av;->A:Lcom/twitter/android/card/bn;

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    if-eqz v1, :cond_1

    .line 59
    const-string/jumbo v1, "player_width"

    iget-object v2, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v1, v2}, Lcom/twitter/library/card/as;->a(Ljava/lang/String;Lclm;)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    const-string/jumbo v2, "player_height"

    iget-object v3, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v2, v3}, Lcom/twitter/library/card/as;->a(Ljava/lang/String;Lclm;)Ljava/lang/Integer;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/twitter/android/card/av;->p:Lcln;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/twitter/android/card/av;->p:Lcln;

    iget-object v3, v3, Lcln;->a:Ljava/lang/String;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 64
    iget-object v3, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v4}, Lcom/twitter/library/util/an;->a(IIF)F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/twitter/android/card/VideoPlayerView;->setAspectRatio(F)V

    .line 66
    iget-object v1, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    iget-object v2, p0, Lcom/twitter/android/card/av;->p:Lcln;

    iget-object v2, v2, Lcln;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/card/VideoPlayerView;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/card/av;->A:Lcom/twitter/android/card/bn;

    if-eqz v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/twitter/android/card/av;->A:Lcom/twitter/android/card/bn;

    iget-object v2, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    invoke-interface {v1, v0, v2}, Lcom/twitter/android/card/bn;->a(Landroid/content/Context;Lcom/twitter/android/card/VideoPlayerView;)V

    .line 73
    iget-object v1, p0, Lcom/twitter/android/card/av;->A:Lcom/twitter/android/card/bn;

    iget-object v2, p0, Lcom/twitter/android/card/av;->n:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/twitter/android/card/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 82
    :cond_1
    :goto_1
    return-void

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    invoke-virtual {v1}, Lcom/twitter/android/card/VideoPlayerView;->c()V

    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/card/VideoPlayerView;->b(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/card/VideoPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/av;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/twitter/android/card/a;->b()V

    .line 97
    iget-object v0, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    invoke-virtual {v0}, Lcom/twitter/android/card/VideoPlayerView;->a()V

    .line 100
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 104
    iget-object v0, p0, Lcom/twitter/android/card/av;->z:Lcom/twitter/android/card/VideoPlayerView;

    if-ne p1, v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/twitter/android/card/av;->p:Lcln;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/av;->p:Lcln;

    iget-object v4, v0, Lcln;->a:Ljava/lang/String;

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/card/av;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/card/av;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/card/av;->o:Ljava/lang/String;

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/card/av;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 111
    :goto_1
    return-void

    .line 105
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 109
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/android/card/a;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method
