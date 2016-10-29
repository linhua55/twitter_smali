.class public Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;
.super Landroid/widget/FrameLayout;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/media/imageeditor/stickers/j;


# instance fields
.field private final a:Lcom/twitter/ui/view/LockableViewPager;

.field private final b:Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;

.field private final c:Landroid/view/View;

.field private final d:Landroid/support/v7/widget/RecyclerView;

.field private final e:Landroid/widget/ProgressBar;

.field private final f:Landroid/view/View;

.field private g:Lcom/twitter/android/media/imageeditor/stickers/a;

.field private h:Lcom/twitter/android/media/imageeditor/stickers/i;

.field private i:Lcom/twitter/android/media/imageeditor/stickers/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040397

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 67
    const v0, 0x7f13074c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/view/LockableViewPager;

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->a:Lcom/twitter/ui/view/LockableViewPager;

    .line 68
    const v0, 0x7f13074b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;

    .line 69
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;

    invoke-virtual {v0, v3}, Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;->setTabMode(I)V

    .line 70
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;

    invoke-virtual {v0, v4}, Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;->setTabGravity(I)V

    .line 71
    const v0, 0x7f13074e

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->c:Landroid/view/View;

    .line 72
    const v0, 0x7f13074f

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->d:Landroid/support/v7/widget/RecyclerView;

    .line 73
    const v0, 0x7f1301c8

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->e:Landroid/widget/ProgressBar;

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f120170

    .line 76
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    :cond_0
    const v0, 0x7f130746

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->f:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->f:Landroid/view/View;

    const v1, 0x7f13043e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/media/imageeditor/stickers/k;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/stickers/k;-><init>(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1, v4, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 92
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    const v1, 0x7f0f045b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 96
    const v2, 0x7f0f045a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 97
    const-string/jumbo v0, "window"

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/twitter/util/ui/r;->a(Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    .line 102
    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 103
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/twitter/android/media/imageeditor/stickers/l;

    invoke-direct {v3, p0, v0, v2}, Lcom/twitter/android/media/imageeditor/stickers/l;-><init>(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;II)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 114
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setClickable(Z)V

    .line 115
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->c:Landroid/view/View;

    new-instance v1, Lcom/twitter/android/media/imageeditor/stickers/m;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/stickers/m;-><init>(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Lcom/twitter/android/media/imageeditor/stickers/o;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->i:Lcom/twitter/android/media/imageeditor/stickers/o;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Lcom/twitter/ui/view/LockableViewPager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->a:Lcom/twitter/ui/view/LockableViewPager;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Lcom/twitter/android/media/imageeditor/stickers/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->g:Lcom/twitter/android/media/imageeditor/stickers/a;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;)Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;

    return-object v0
.end method


# virtual methods
.method public a(Lcpj;I)Landroid/support/v4/view/ViewPager;
    .locals 6

    .prologue
    const/16 v1, 0x8

    .line 136
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    if-eqz p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    .line 140
    new-instance v2, Lcom/twitter/android/media/imageeditor/stickers/a;

    .line 141
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcpj;->a:Ljava/util/List;

    .line 142
    invoke-static {v4, v0, v1}, Lcom/twitter/android/media/stickers/i;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lcpj;->b:Ljava/util/List;

    .line 143
    invoke-static {v5, v0, v1}, Lcom/twitter/android/media/stickers/i;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0, p0}, Lcom/twitter/android/media/imageeditor/stickers/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/twitter/android/media/imageeditor/stickers/j;)V

    iput-object v2, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->g:Lcom/twitter/android/media/imageeditor/stickers/a;

    .line 145
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->g:Lcom/twitter/android/media/imageeditor/stickers/a;

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->h:Lcom/twitter/android/media/imageeditor/stickers/i;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/stickers/a;->a(Lcom/twitter/android/media/imageeditor/stickers/i;)V

    .line 146
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->a:Lcom/twitter/ui/view/LockableViewPager;

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->g:Lcom/twitter/android/media/imageeditor/stickers/a;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/LockableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->b:Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->a:Lcom/twitter/ui/view/LockableViewPager;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/stickers/StickerTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 148
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->g:Lcom/twitter/android/media/imageeditor/stickers/a;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/stickers/a;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->a:Lcom/twitter/ui/view/LockableViewPager;

    invoke-virtual {v0, p2}, Lcom/twitter/ui/view/LockableViewPager;->setCurrentItem(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->a:Lcom/twitter/ui/view/LockableViewPager;

    .line 155
    :goto_0
    return-object v0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->a:Lcom/twitter/ui/view/LockableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/LockableViewPager;->setPagingEnabled(Z)V

    .line 189
    return-void
.end method

.method public a(Ljava/util/List;Lcom/twitter/android/media/imageeditor/stickers/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpf;",
            ">;",
            "Lcom/twitter/android/media/imageeditor/stickers/r;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/twitter/android/media/imageeditor/stickers/p;

    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/twitter/android/media/imageeditor/stickers/p;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/twitter/android/media/imageeditor/stickers/r;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 181
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->a:Lcom/twitter/ui/view/LockableViewPager;

    invoke-virtual {v0, v3}, Lcom/twitter/ui/view/LockableViewPager;->setPagingEnabled(Z)V

    .line 183
    return-void
.end method

.method public setRetryStickerCatalogListener(Lcom/twitter/android/media/imageeditor/stickers/o;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->i:Lcom/twitter/android/media/imageeditor/stickers/o;

    .line 125
    return-void
.end method

.method public setStickerFeaturedCategoryData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->a:Lcom/twitter/ui/view/LockableViewPager;

    new-instance v1, Lcom/twitter/android/media/imageeditor/stickers/n;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/media/imageeditor/stickers/n;-><init>(Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/LockableViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0
.end method

.method public setStickerSelectedListener(Lcom/twitter/android/media/imageeditor/stickers/i;)V
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->h:Lcom/twitter/android/media/imageeditor/stickers/i;

    .line 129
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->g:Lcom/twitter/android/media/imageeditor/stickers/a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->g:Lcom/twitter/android/media/imageeditor/stickers/a;

    invoke-virtual {v0, p1}, Lcom/twitter/android/media/imageeditor/stickers/a;->a(Lcom/twitter/android/media/imageeditor/stickers/i;)V

    .line 132
    :cond_0
    return-void
.end method
