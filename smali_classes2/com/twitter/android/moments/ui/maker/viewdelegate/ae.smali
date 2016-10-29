.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/viewdelegate/w;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

.field private final b:Lcom/twitter/library/av/bf;

.field private final c:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;Lcom/twitter/library/av/bf;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->c:Lrx/subjects/e;

    .line 44
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    .line 45
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->b:Lcom/twitter/library/av/bf;

    .line 46
    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    new-instance v2, Lcom/twitter/library/av/bf;

    invoke-direct {v2}, Lcom/twitter/library/av/bf;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;Lcom/twitter/library/av/bf;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    return-object v0
.end method

.method private a()Ldje;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ag;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ag;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)V

    return-object v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)Ldje;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ah;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ah;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->b(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->c()I

    move-result v1

    if-lez v1, :cond_3

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v1

    .line 127
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->c()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    .line 130
    invoke-virtual {v3, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a(Landroid/view/View;)Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->b:Lcom/twitter/library/av/bf;

    invoke-interface {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;->a()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twitter/library/av/bf;->a(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 133
    invoke-interface {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 139
    :cond_2
    :goto_1
    return v0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->c()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private b()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<-",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;",
            "+",
            "Lrx/o",
            "<",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ai;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ai;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)V

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)Lrx/subjects/e;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->c:Lrx/subjects/e;

    return-object v0
.end method

.method private b(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    .line 100
    invoke-virtual {v2, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a(Landroid/view/View;)Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->d()Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;Landroid/view/View;)V

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)Lrx/o;
    .locals 3
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
    .line 51
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->b()Lcom/twitter/android/moments/ui/maker/viewdelegate/an;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/an;->b(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 69
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 70
    invoke-static {p1}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v1

    .line 71
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a()Ldje;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/w;->a(Ldje;)Lrx/w;

    move-result-object v1

    .line 72
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->b()Ldjj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/w;->b(Ldjj;)Lrx/o;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->c:Lrx/subjects/e;

    .line 73
    invoke-virtual {v1, v2}, Lrx/o;->d(Lrx/o;)Lrx/o;

    move-result-object v1

    .line 74
    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)Ldje;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/o;->a(Ldje;)Lrx/o;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public b(I)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a(I)Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/ui/r;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 112
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method
