.class public Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "Twttr"


# instance fields
.field private final a:F

.field private b:Z

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->a:F

    .line 30
    return-void
.end method

.method private a(F)Z
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->c:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fling(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 36
    instance-of v0, v0, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->getMinFlingVelocity()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    .line 40
    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->a(I)I

    move-result v0

    .line 41
    iput-boolean v1, p0, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->b:Z

    .line 42
    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    move v0, v1

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->c:F

    .line 70
    :cond_0
    iput-boolean v4, p0, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->b:Z

    move v0, v2

    .line 71
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/SnappyRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 58
    instance-of v3, v0, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    if-eqz v3, :cond_0

    .line 59
    check-cast v0, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;

    .line 61
    invoke-virtual {v0, v4}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    if-ge v3, v2, :cond_2

    .line 63
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_1
    move v0, v1

    .line 67
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/SnappyHorizontalLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1
.end method
