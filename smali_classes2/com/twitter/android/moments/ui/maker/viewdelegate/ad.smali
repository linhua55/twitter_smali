.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView;

.field private final b:Landroid/support/v7/widget/GridLayoutManager;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->c:Landroid/graphics/Rect;

    .line 18
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->a:Landroid/support/v7/widget/RecyclerView;

    .line 19
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->b:Landroid/support/v7/widget/GridLayoutManager;

    .line 20
    return-void
.end method


# virtual methods
.method public a()I
    .locals 11

    .prologue
    .line 29
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 30
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    .line 31
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 32
    const/4 v3, -0x1

    .line 33
    const v1, 0x7fffffff

    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->c:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->a:Landroid/support/v7/widget/RecyclerView;

    .line 35
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->a:Landroid/support/v7/widget/RecyclerView;

    .line 36
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    .line 34
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    :goto_0
    if-gt v2, v4, :cond_0

    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Point;->set(II)V

    .line 42
    iget v0, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->c:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v6, v5, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ad;->c:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 44
    if-ge v0, v1, :cond_1

    move v1, v2

    .line 37
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 50
    :cond_0
    return v3

    :cond_1
    move v0, v1

    move v1, v3

    goto :goto_1
.end method
