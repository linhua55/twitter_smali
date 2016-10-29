.class public Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 26
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method a()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public a(I)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 50
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 59
    :goto_1
    return v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    .line 57
    invoke-virtual {p0, v5}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->a()I

    move-result v4

    .line 56
    invoke-static {v2, v3, v1, v4}, Lcom/twitter/android/moments/ui/maker/ds;->a(DII)I

    move-result v1

    .line 58
    if-gez p1, :cond_3

    sub-int/2addr v0, v1

    .line 59
    :goto_2
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v5, v1}, Lcom/twitter/util/math/b;->a(III)I

    move-result v0

    goto :goto_1

    .line 58
    :cond_3
    add-int/2addr v0, v1

    goto :goto_2
.end method

.method public b(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 68
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 69
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/twitter/android/moments/ui/maker/dr;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/moments/ui/maker/dr;-><init>(Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;Landroid/content/Context;)V

    .line 44
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 46
    return-void
.end method
