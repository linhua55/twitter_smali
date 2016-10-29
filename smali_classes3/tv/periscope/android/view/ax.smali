.class Ltv/periscope/android/view/ax;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/view/RootDragLayout;


# direct methods
.method private constructor <init>(Ltv/periscope/android/view/RootDragLayout;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/periscope/android/view/RootDragLayout;Ltv/periscope/android/view/au;)V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0, p1}, Ltv/periscope/android/view/ax;-><init>(Ltv/periscope/android/view/RootDragLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 780
    iget-object v2, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    iget v2, v2, Ltv/periscope/android/view/RootDragLayout;->c:I

    if-ne v1, v2, :cond_2

    .line 781
    int-to-float v1, p2

    iget-object v2, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    iget v2, v2, Ltv/periscope/android/view/RootDragLayout;->a:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 782
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    iget v0, v0, Ltv/periscope/android/view/RootDragLayout;->a:F

    float-to-int v0, v0

    .line 793
    :cond_0
    :goto_0
    return v0

    .line 783
    :cond_1
    if-ltz p2, :cond_0

    .line 786
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v1, p3

    iget-object v2, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v2}, Ltv/periscope/android/view/RootDragLayout;->c(Ltv/periscope/android/view/RootDragLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 789
    :cond_2
    iget-object v1, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v1, p1}, Ltv/periscope/android/view/RootDragLayout;->a(Ltv/periscope/android/view/RootDragLayout;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-virtual {v0}, Ltv/periscope/android/view/RootDragLayout;->getHeight()I

    move-result v0

    .line 791
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getOrderedChildIndex(I)I
    .locals 3

    .prologue
    .line 727
    move v0, p1

    :goto_0
    if-ltz v0, :cond_0

    .line 728
    iget-object v1, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-virtual {v1, v0}, Ltv/periscope/android/view/RootDragLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 729
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    move p1, v0

    .line 733
    :cond_0
    return p1

    .line 727
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 766
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 767
    iget-object v1, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    iget v1, v1, Ltv/periscope/android/view/RootDragLayout;->c:I

    if-ne v0, v1, :cond_0

    .line 768
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    iget v0, v0, Ltv/periscope/android/view/RootDragLayout;->a:F

    float-to-int v0, v0

    .line 773
    :goto_0
    return v0

    .line 770
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v0, p1}, Ltv/periscope/android/view/RootDragLayout;->a(Ltv/periscope/android/view/RootDragLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 773
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v0}, Ltv/periscope/android/view/RootDragLayout;->a(Ltv/periscope/android/view/RootDragLayout;)Ltv/periscope/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v0}, Ltv/periscope/android/view/RootDragLayout;->a(Ltv/periscope/android/view/RootDragLayout;)Ltv/periscope/android/view/aw;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v1}, Ltv/periscope/android/view/RootDragLayout;->b(Ltv/periscope/android/view/RootDragLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ltv/periscope/android/view/aw;->a(Landroid/view/View;I)V

    .line 741
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 7

    .prologue
    .line 745
    const/4 v2, 0x0

    .line 746
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 747
    iget-object v1, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    iget v1, v1, Ltv/periscope/android/view/RootDragLayout;->c:I

    if-ne v0, v1, :cond_2

    .line 748
    int-to-float v0, p3

    iget-object v1, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    iget v1, v1, Ltv/periscope/android/view/RootDragLayout;->a:F

    div-float v2, v0, v1

    .line 756
    :cond_0
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v0}, Ltv/periscope/android/view/RootDragLayout;->a(Ltv/periscope/android/view/RootDragLayout;)Ltv/periscope/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v0}, Ltv/periscope/android/view/RootDragLayout;->a(Ltv/periscope/android/view/RootDragLayout;)Ltv/periscope/android/view/aw;

    move-result-object v0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Ltv/periscope/android/view/aw;->a(Landroid/view/View;FIIII)V

    .line 759
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;

    .line 760
    iput v2, v0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->a:F

    .line 761
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-virtual {v0}, Ltv/periscope/android/view/RootDragLayout;->invalidate()V

    .line 762
    return-void

    .line 750
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v0, p1}, Ltv/periscope/android/view/RootDragLayout;->a(Ltv/periscope/android/view/RootDragLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-virtual {v0}, Ltv/periscope/android/view/RootDragLayout;->getHeight()I

    move-result v0

    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 753
    sub-int/2addr v0, p3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v2, v0, v1

    goto :goto_0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 810
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v0}, Ltv/periscope/android/view/RootDragLayout;->f(Ltv/periscope/android/view/RootDragLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 811
    cmpl-float v0, p3, v4

    if-gtz v0, :cond_0

    cmpl-float v0, p3, v4

    if-nez v0, :cond_2

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    iget v3, v3, Ltv/periscope/android/view/RootDragLayout;->b:F

    float-to-int v3, v3

    if-le v0, v3, :cond_2

    :cond_0
    move v3, v2

    .line 813
    :goto_0
    if-eqz v3, :cond_3

    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    iget v0, v0, Ltv/periscope/android/view/RootDragLayout;->a:F

    float-to-int v0, v0

    .line 814
    :goto_1
    iget-object v4, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v4}, Ltv/periscope/android/view/RootDragLayout;->b(Ltv/periscope/android/view/RootDragLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 815
    if-nez v3, :cond_1

    move v1, v2

    .line 824
    :cond_1
    :goto_2
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-virtual {v0}, Ltv/periscope/android/view/RootDragLayout;->invalidate()V

    .line 825
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v0, p1, v1}, Ltv/periscope/android/view/RootDragLayout;->a(Ltv/periscope/android/view/RootDragLayout;Landroid/view/View;Z)V

    .line 826
    return-void

    :cond_2
    move v3, v1

    .line 812
    goto :goto_0

    :cond_3
    move v0, v1

    .line 813
    goto :goto_1

    .line 817
    :cond_4
    iget-object v0, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-virtual {v0}, Ltv/periscope/android/view/RootDragLayout;->getHeight()I

    move-result v0

    .line 818
    cmpl-float v3, p3, v4

    if-gtz v3, :cond_5

    cmpl-float v3, p3, v4

    if-nez v3, :cond_6

    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    if-le v3, v4, :cond_6

    :cond_5
    move v1, v2

    .line 820
    :cond_6
    if-eqz v1, :cond_7

    .line 821
    :goto_3
    iget-object v2, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v2}, Ltv/periscope/android/view/RootDragLayout;->b(Ltv/periscope/android/view/RootDragLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    goto :goto_2

    .line 820
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_3
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 799
    iget-object v2, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v2, p1}, Ltv/periscope/android/view/RootDragLayout;->a(Ltv/periscope/android/view/RootDragLayout;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    iget-object v2, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v2, p1}, Ltv/periscope/android/view/RootDragLayout;->b(Ltv/periscope/android/view/RootDragLayout;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    .line 801
    invoke-static {v2}, Ltv/periscope/android/view/RootDragLayout;->d(Ltv/periscope/android/view/RootDragLayout;)F

    move-result v2

    iget-object v3, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v3}, Ltv/periscope/android/view/RootDragLayout;->e(Ltv/periscope/android/view/RootDragLayout;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 801
    goto :goto_0

    .line 803
    :cond_2
    iget-object v2, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v2, p1}, Ltv/periscope/android/view/RootDragLayout;->b(Ltv/periscope/android/view/RootDragLayout;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Ltv/periscope/android/view/ax;->a:Ltv/periscope/android/view/RootDragLayout;

    invoke-static {v2}, Ltv/periscope/android/view/RootDragLayout;->f(Ltv/periscope/android/view/RootDragLayout;)Landroid/view/View;

    move-result-object v2

    if-eq p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
