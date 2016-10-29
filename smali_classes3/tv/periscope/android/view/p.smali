.class Ltv/periscope/android/view/p;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "Twttr"


# instance fields
.field private a:I

.field private b:Z

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/periscope/android/view/ActionSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/periscope/android/view/ActionSheet;)V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ltv/periscope/android/view/p;-><init>(Landroid/content/Context;Ltv/periscope/android/view/ActionSheet;IZ)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltv/periscope/android/view/ActionSheet;IZ)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/periscope/android/view/p;->c:Ljava/lang/ref/WeakReference;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/p;->setAutoMeasureEnabled(Z)V

    .line 53
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;I)[I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_0

    .line 102
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 103
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 105
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 106
    invoke-virtual {p0}, Ltv/periscope/android/view/p;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Ltv/periscope/android/view/p;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v1, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 107
    invoke-virtual {p0}, Ltv/periscope/android/view/p;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Ltv/periscope/android/view/p;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 108
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 110
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    aput v3, v1, v6

    .line 112
    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v0, v4

    aput v0, v1, v3

    .line 113
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    move-object v0, v1

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Ltv/periscope/android/view/p;->b:Z

    .line 61
    return-void
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Ltv/periscope/android/view/p;->b:Z

    return v0
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Ltv/periscope/android/view/p;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/ActionSheet;

    .line 72
    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Ltv/periscope/android/view/p;->getItemCount()I

    move-result v1

    .line 78
    iget v3, p0, Ltv/periscope/android/view/p;->a:I

    if-le v1, v3, :cond_2

    .line 80
    invoke-virtual {v0}, Ltv/periscope/android/view/ActionSheet;->getScrollPage()I

    move-result v0

    if-nez v0, :cond_3

    div-int/lit8 v0, v1, 0x2

    :goto_1
    iget v1, p0, Ltv/periscope/android/view/p;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 85
    :cond_2
    if-lez v1, :cond_5

    .line 87
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/view/p;->a(Landroid/support/v7/widget/RecyclerView$Recycler;I)[I

    move-result-object v3

    .line 88
    if-eqz v3, :cond_0

    move v0, v2

    .line 89
    :goto_2
    if-ge v0, v1, :cond_4

    .line 90
    const/4 v4, 0x1

    aget v4, v3, v4

    add-int/2addr v2, v4

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 80
    goto :goto_1

    .line 92
    :cond_4
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Ltv/periscope/android/view/p;->setMeasuredDimension(II)V

    goto :goto_0

    .line 95
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    goto :goto_0
.end method
