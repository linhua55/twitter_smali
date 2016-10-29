.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/viewdelegate/w;
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;

.field private final c:Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

.field private final d:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

.field private e:Lrx/ap;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;Landroid/support/v7/widget/RecyclerView$ItemDecoration;Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;Lcom/twitter/android/moments/ui/maker/viewdelegate/w;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->a:Landroid/view/View;

    .line 55
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->b:Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;

    .line 56
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->c:Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    .line 57
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->d:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

    .line 58
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->c:Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    invoke-virtual {p2, v0}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    invoke-virtual {p2, p3}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/viewdelegate/f;)Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->b:Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/f;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f02e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f02e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 38
    new-instance v3, Lcom/twitter/internal/android/widget/aa;

    invoke-direct {v3, v0, v1}, Lcom/twitter/internal/android/widget/aa;-><init>(II)V

    .line 39
    new-instance v4, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    invoke-direct {v4, p0, v5}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;-><init>(Landroid/content/Context;Z)V

    .line 41
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040192

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 42
    const v0, 0x7f13045b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;

    .line 45
    invoke-static {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a(Landroid/support/v7/widget/RecyclerView;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    move-result-object v5

    .line 46
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;-><init>(Landroid/view/View;Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;Landroid/support/v7/widget/RecyclerView$ItemDecoration;Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;Lcom/twitter/android/moments/ui/maker/viewdelegate/w;)V

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/viewdelegate/f;)Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->c:Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    return-object v0
.end method

.method private c(I)Ldjf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ldjf",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/g;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/g;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/f;I)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->d:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

    invoke-interface {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/w;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->b:Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->c:Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->b(I)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->e:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->b:Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;

    invoke-static {v0}, Ldcx;->a(Landroid/view/View;)Lrx/o;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->c(I)Ldjf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->e:Lrx/ap;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->b:Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 70
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->c:Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->c:Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 109
    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public b(I)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->d:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

    invoke-interface {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/w;->b(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->e:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 114
    return-void
.end method
