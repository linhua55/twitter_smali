.class public Lcom/twitter/android/revenue/am;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/revenue/w;
.implements Lcom/twitter/library/widget/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/revenue/w",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;",
        "Lcom/twitter/library/widget/c;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/support/v4/view/ViewPager;

.field private final c:Lcom/twitter/android/widget/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/widget/j",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/android/revenue/an;

.field private final e:Lcom/twitter/model/core/Tweet;

.field private final f:Lcfs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcfs",
            "<",
            "Lcft;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/twitter/library/widget/TweetView;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/view/aa;Lcfs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/model/core/Tweet;",
            "Lcom/twitter/library/widget/renderablecontent/DisplayMode;",
            "Lcom/twitter/library/view/aa;",
            "Lcfs",
            "<",
            "Lcft;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/revenue/am;->h:I

    .line 64
    iput-object p2, p0, Lcom/twitter/android/revenue/am;->e:Lcom/twitter/model/core/Tweet;

    .line 65
    iput-object p5, p0, Lcom/twitter/android/revenue/am;->f:Lcfs;

    .line 67
    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/am;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/am;->a:Landroid/view/ViewGroup;

    .line 69
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->a:Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 71
    new-instance v0, Lcom/twitter/android/revenue/ao;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/revenue/ao;-><init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/view/aa;Lcfs;)V

    .line 73
    new-instance v1, Lcom/twitter/android/widget/j;

    invoke-direct {v1, p1, v0}, Lcom/twitter/android/widget/j;-><init>(Landroid/content/Context;Lcom/twitter/android/widget/l;)V

    iput-object v1, p0, Lcom/twitter/android/revenue/am;->c:Lcom/twitter/android/widget/j;

    .line 75
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->a:Landroid/view/ViewGroup;

    const v1, 0x7f130362

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 76
    iget-object v1, p0, Lcom/twitter/android/revenue/am;->c:Lcom/twitter/android/widget/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 77
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 78
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 80
    new-instance v1, Lcom/twitter/android/revenue/an;

    invoke-direct {v1, p2, p5}, Lcom/twitter/android/revenue/an;-><init>(Lcom/twitter/model/core/Tweet;Lcfs;)V

    iput-object v1, p0, Lcom/twitter/android/revenue/am;->d:Lcom/twitter/android/revenue/an;

    .line 81
    iget-object v1, p0, Lcom/twitter/android/revenue/am;->d:Lcom/twitter/android/revenue/an;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    const v2, 0x7f0f0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 85
    invoke-static {p3, v1}, Lcom/twitter/android/revenue/v;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;Landroid/content/res/Resources;)I

    move-result v3

    .line 86
    invoke-virtual {v0, v3, v6, v2, v6}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 89
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    .line 90
    int-to-float v3, v3

    sub-float v3, v4, v3

    int-to-float v2, v2

    sub-float v2, v3, v2

    iget-object v3, p0, Lcom/twitter/android/revenue/am;->c:Lcom/twitter/android/widget/j;

    .line 91
    invoke-virtual {v3, v6}, Lcom/twitter/android/widget/j;->getPageWidth(I)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float/2addr v2, v3

    .line 92
    invoke-static {}, Lcom/twitter/android/revenue/z;->i()Lcom/twitter/library/av/model/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/av/model/c;->a()F

    move-result v3

    .line 93
    const/4 v4, 0x3

    .line 94
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/android/revenue/v;->a(Landroid/content/res/Resources;FFI)F

    move-result v1

    .line 95
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setMinimumHeight(I)V

    .line 96
    iput-object v0, p0, Lcom/twitter/android/revenue/am;->b:Landroid/support/v4/view/ViewPager;

    .line 97
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0403cf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->d:Lcom/twitter/android/revenue/an;

    invoke-virtual {v0, p1}, Lcom/twitter/android/revenue/an;->a(I)V

    .line 115
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 116
    return-void
.end method

.method public a(Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->c:Lcom/twitter/android/widget/j;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/j;->a(Lcmf;)V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/revenue/am;->h:I

    .line 110
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 132
    return-void
.end method

.method public getAutoPlayableItem()Lcom/twitter/library/widget/a;
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/twitter/android/revenue/am;->h:I

    iget-object v1, p0, Lcom/twitter/android/revenue/am;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/revenue/am;->h:I

    .line 139
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->b:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/twitter/android/revenue/am;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/TweetView;

    iput-object v0, p0, Lcom/twitter/android/revenue/am;->g:Lcom/twitter/library/widget/TweetView;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/am;->g:Lcom/twitter/library/widget/TweetView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/revenue/am;->g:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/TweetView;->getAutoPlayableItem()Lcom/twitter/library/widget/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/twitter/library/widget/a;->j:Lcom/twitter/library/widget/a;

    goto :goto_0
.end method
