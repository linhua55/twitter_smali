.class public Lcom/twitter/android/revenue/card/ax;
.super Lcom/twitter/android/revenue/card/a;
.source "Twttr"


# instance fields
.field protected final a:I

.field protected final b:Lcom/twitter/library/util/y;

.field protected c:Landroid/view/ViewGroup;

.field protected d:Lcom/twitter/media/ui/image/MediaImageView;

.field protected e:Lcom/twitter/library/card/e;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field private r:Lcom/twitter/android/revenue/card/StatsAndCtaView;

.field private final s:[F

.field private final t:[F


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;I[F[F)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/revenue/card/a;-><init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 49
    iput p5, p0, Lcom/twitter/android/revenue/card/ax;->a:I

    .line 50
    iput-object p6, p0, Lcom/twitter/android/revenue/card/ax;->s:[F

    .line 51
    iput-object p7, p0, Lcom/twitter/android/revenue/card/ax;->t:[F

    .line 52
    new-instance v0, Lcom/twitter/android/revenue/card/ay;

    invoke-direct {v0, p0}, Lcom/twitter/android/revenue/card/ay;-><init>(Lcom/twitter/android/revenue/card/ax;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ax;->b:Lcom/twitter/library/util/y;

    .line 60
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/ax;->b(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ax;->c:Landroid/view/ViewGroup;

    .line 65
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->c:Landroid/view/ViewGroup;

    const v1, 0x7f130510

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 66
    iget v1, p0, Lcom/twitter/android/revenue/card/ax;->a:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 67
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->c:Landroid/view/ViewGroup;

    const v1, 0x7f13050c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/card/StatsAndCtaView;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ax;->r:Lcom/twitter/android/revenue/card/StatsAndCtaView;

    .line 70
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->r:Lcom/twitter/android/revenue/card/StatsAndCtaView;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/ax;->b:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/android/revenue/card/StatsAndCtaView;->setOnClickTouchListener(Lcom/twitter/library/util/y;)V

    .line 72
    sget-object v0, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->g:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/ax;->p:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->r:Lcom/twitter/android/revenue/card/StatsAndCtaView;

    invoke-virtual {v0, v3}, Lcom/twitter/android/revenue/card/StatsAndCtaView;->setShowBlankLine(Z)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->c:Landroid/view/ViewGroup;

    const v1, 0x7f130210

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    .line 77
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 78
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const-string/jumbo v1, "card"

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setImageType(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->c:Landroid/view/ViewGroup;

    const v1, 0x7f130519

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/revenue/card/ax;->s:[F

    invoke-static {v0, v1, v2}, Lcom/twitter/android/revenue/y;->a(Landroid/view/View;Landroid/content/res/Resources;[F)V

    .line 82
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ax;->b:Lcom/twitter/library/util/y;

    invoke-virtual {v1, v0}, Lcom/twitter/library/util/y;->a(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->c:Landroid/view/ViewGroup;

    const v1, 0x7f1304d5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/card/CardMediaView;

    .line 85
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ax;->t:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/twitter/android/revenue/card/ax;->t:[F

    aget v2, v2, v3

    iget-object v3, p0, Lcom/twitter/android/revenue/card/ax;->t:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/twitter/android/revenue/card/ax;->t:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/revenue/card/CardMediaView;->a(FFFF)V

    .line 87
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/twitter/android/revenue/card/a;->a()V

    .line 110
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 113
    :cond_0
    return-void
.end method

.method public a(JLclm;)V
    .locals 2

    .prologue
    .line 124
    const-string/jumbo v0, "app_url"

    const-string/jumbo v1, "app_url_resolved"

    invoke-static {v0, v1, p3}, Lcom/twitter/library/card/e;->a(Ljava/lang/String;Ljava/lang/String;Lclm;)Lcom/twitter/library/card/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ax;->e:Lcom/twitter/library/card/e;

    .line 125
    const-string/jumbo v0, "app_id"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ax;->f:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "card_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/ax;->g:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->d_:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "_card_data"

    invoke-static {v1, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->r:Lcom/twitter/android/revenue/card/StatsAndCtaView;

    invoke-virtual {v0, p3}, Lcom/twitter/android/revenue/card/StatsAndCtaView;->a(Lclm;)V

    .line 130
    invoke-virtual {p0, p3}, Lcom/twitter/android/revenue/card/ax;->a(Lclm;)V

    .line 131
    return-void
.end method

.method a(Lclm;)V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/ax;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, v0, Lcln;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/android/revenue/card/ax;->h:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v2, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 138
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 139
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/ax;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const/high16 v2, 0x40200000    # 2.5f

    .line 141
    invoke-virtual {v0, v2}, Lcln;->a(F)F

    move-result v0

    .line 140
    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 142
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/ax;->b:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    :cond_0
    return-void
.end method

.method b(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    .line 91
    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04021a

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 92
    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method j()Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/android/revenue/card/ax;->d:Lcom/twitter/media/ui/image/MediaImageView;

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string/jumbo v0, "promo_image"

    return-object v0
.end method
