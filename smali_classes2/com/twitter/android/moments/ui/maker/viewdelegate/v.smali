.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/viewdelegate/w;
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Lcom/twitter/android/moments/ui/maker/viewdelegate/p;

.field private final d:Landroid/support/v7/widget/GridLayoutManager;

.field private final e:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

.field private final f:Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ItemDecoration;Lcom/twitter/android/moments/ui/maker/viewdelegate/p;Landroid/support/v7/widget/GridLayoutManager;Lcom/twitter/android/moments/ui/maker/viewdelegate/w;Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->b:Landroid/view/ViewGroup;

    .line 51
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->a:Landroid/support/v7/widget/RecyclerView;

    .line 52
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->d:Landroid/support/v7/widget/GridLayoutManager;

    .line 53
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->e:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

    .line 54
    iput-object p7, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->f:Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;

    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->d:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 57
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/p;

    .line 58
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/maker/viewdelegate/v;
    .locals 8

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f031c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 33
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040196

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 34
    const v0, 0x7f130460

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 36
    invoke-static {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a(Landroid/support/v7/widget/RecyclerView;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    move-result-object v6

    .line 37
    new-instance v5, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v0, 0x3

    invoke-direct {v5, p0, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 38
    new-instance v7, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;

    invoke-direct {v7, v2, v5}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/GridLayoutManager;)V

    .line 40
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

    new-instance v3, Lcom/twitter/internal/android/widget/aa;

    invoke-direct {v3, v4}, Lcom/twitter/internal/android/widget/aa;-><init>(I)V

    .line 41
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/viewdelegate/p;->a()Lcom/twitter/android/moments/ui/maker/viewdelegate/p;

    move-result-object v4

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;-><init>(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ItemDecoration;Lcom/twitter/android/moments/ui/maker/viewdelegate/p;Landroid/support/v7/widget/GridLayoutManager;Lcom/twitter/android/moments/ui/maker/viewdelegate/w;Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;)V

    .line 40
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
    .line 93
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->e:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

    invoke-interface {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/w;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 78
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 62
    return-void
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/viewdelegate/s;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/p;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/p;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/p;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/p;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/s;)V

    .line 73
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->f:Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->a()I

    move-result v0

    return v0
.end method

.method public b(I)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->e:Lcom/twitter/android/moments/ui/maker/viewdelegate/w;

    invoke-interface {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/w;->b(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->d:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->d:Landroid/support/v7/widget/GridLayoutManager;

    .line 82
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
