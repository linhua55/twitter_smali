.class public Lcom/twitter/android/av/card/c;
.super Lcom/twitter/android/av/card/g;
.source "Twttr"


# instance fields
.field private final k:Lcom/twitter/android/revenue/card/StatsAndCtaView;

.field private l:Lcom/twitter/library/card/e;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Z)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 47
    new-instance v3, Lcom/twitter/android/card/k;

    invoke-direct {v3, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    new-instance v5, Lcom/twitter/android/av/video/g;

    .line 48
    invoke-static {p1, p3}, Lcom/twitter/android/av/card/c;->a(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/twitter/android/av/video/g;-><init>(Landroid/view/View;)V

    .line 49
    invoke-static {}, Lcom/twitter/library/av/playback/ao;->a()Lcom/twitter/library/av/playback/ao;

    move-result-object v6

    if-eqz p3, :cond_1

    new-instance v7, Lcom/twitter/android/av/card/f;

    invoke-direct {v7}, Lcom/twitter/android/av/card/f;-><init>()V

    :goto_0
    new-instance v8, Lcom/twitter/android/av/bj;

    invoke-direct {v8}, Lcom/twitter/android/av/bj;-><init>()V

    new-instance v9, Lcom/twitter/android/av/video/j;

    invoke-direct {v9}, Lcom/twitter/android/av/video/j;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 47
    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/av/card/g;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/av/video/g;Lcom/twitter/library/av/playback/ao;Lcom/twitter/android/av/bq;Lcom/twitter/android/av/bj;Lcom/twitter/android/av/video/j;)V

    .line 52
    iget-object v0, p0, Lcom/twitter/android/av/card/c;->a:Landroid/view/View;

    const v1, 0x7f13050c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/card/StatsAndCtaView;

    iput-object v0, p0, Lcom/twitter/android/av/card/c;->k:Lcom/twitter/android/revenue/card/StatsAndCtaView;

    .line 54
    new-instance v0, Lcom/twitter/android/av/card/d;

    invoke-direct {v0, p0}, Lcom/twitter/android/av/card/d;-><init>(Lcom/twitter/android/av/card/c;)V

    .line 62
    iget-object v1, p0, Lcom/twitter/android/av/card/c;->k:Lcom/twitter/android/revenue/card/StatsAndCtaView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/revenue/card/StatsAndCtaView;->setOnClickTouchListener(Lcom/twitter/library/util/y;)V

    .line 64
    if-eqz p3, :cond_0

    .line 65
    iget-object v1, p0, Lcom/twitter/android/av/card/c;->a:Landroid/view/View;

    const v2, 0x7f130519

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/twitter/android/av/card/c;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 67
    const v3, 0x7f0f0114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 68
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v10, v4, v5

    const/4 v5, 0x1

    aput v10, v4, v5

    const/4 v5, 0x2

    aput v10, v4, v5

    const/4 v5, 0x3

    aput v10, v4, v5

    const/4 v5, 0x4

    aput v3, v4, v5

    const/4 v5, 0x5

    aput v3, v4, v5

    const/4 v5, 0x6

    aput v3, v4, v5

    const/4 v5, 0x7

    aput v3, v4, v5

    invoke-static {v1, v2, v4}, Lcom/twitter/android/revenue/y;->a(Landroid/view/View;Landroid/content/res/Resources;[F)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/twitter/library/util/y;->a(Landroid/view/View;)V

    .line 72
    :cond_0
    return-void

    .line 49
    :cond_1
    new-instance v7, Lcom/twitter/android/av/bq;

    invoke-direct {v7}, Lcom/twitter/android/av/bq;-><init>()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Z)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    if-eqz p1, :cond_0

    .line 80
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04021a

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    const v0, 0x7f130510

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 83
    const v2, 0x7f04023c

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object v0, v1

    .line 90
    :goto_0
    return-object v0

    .line 87
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04023b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;Z)Lcom/twitter/library/av/VideoPlayerView;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/android/av/card/c;->b(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;Z)Lcom/twitter/library/av/VideoPlayerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/av/card/c;)Lcom/twitter/library/card/e;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/av/card/c;->l:Lcom/twitter/library/card/e;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;Z)Lcom/twitter/library/av/VideoPlayerView;
    .locals 6

    .prologue
    .line 128
    if-nez p3, :cond_0

    .line 129
    invoke-static {}, Lcom/twitter/android/av/card/c;->p()Lcom/twitter/library/av/az;

    move-result-object v4

    .line 130
    new-instance v0, Lcom/twitter/library/av/VideoPlayerView;

    new-instance v1, Lcom/twitter/library/av/bc;

    invoke-direct {v1}, Lcom/twitter/library/av/bc;-><init>()V

    .line 131
    invoke-virtual {v1, p0, p1}, Lcom/twitter/library/av/bc;->a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;)Lcom/twitter/library/av/VideoViewContainer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/av/VideoPlayerView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoViewContainer;Lcom/twitter/library/av/az;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 134
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/library/av/VideoPlayerView;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/library/av/VideoPlayerView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/av/card/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/av/card/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/av/card/c;)Lcom/twitter/android/card/CardActionHelper;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/av/card/c;->v:Lcom/twitter/android/card/CardActionHelper;

    return-object v0
.end method

.method private static p()Lcom/twitter/library/av/az;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/twitter/android/av/card/e;

    invoke-direct {v0}, Lcom/twitter/android/av/card/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(JLclm;)V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/av/card/g;->a(JLclm;)V

    .line 99
    const-string/jumbo v0, "app_url"

    const-string/jumbo v1, "app_url_resolved"

    invoke-static {v0, v1, p3}, Lcom/twitter/library/card/e;->a(Ljava/lang/String;Ljava/lang/String;Lclm;)Lcom/twitter/library/card/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/c;->l:Lcom/twitter/library/card/e;

    .line 100
    const-string/jumbo v0, "card_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/card/c;->m:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/twitter/android/av/card/c;->r:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "_card_data"

    invoke-static {v1, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/twitter/android/av/card/c;->k:Lcom/twitter/android/revenue/card/StatsAndCtaView;

    invoke-virtual {v0, p3}, Lcom/twitter/android/revenue/card/StatsAndCtaView;->a(Lclm;)V

    .line 103
    return-void
.end method

.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
