.class public Lcom/twitter/android/av/card/AudioCardLayout;
.super Landroid/widget/FrameLayout;
.source "Twttr"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/av/card/AudioCardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 32
    const v0, 0x7f130508

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/card/AudioCardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    .line 33
    const v0, 0x7f1303a9

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/card/AudioCardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    .line 34
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/twitter/android/av/card/AudioCardLayout;->getPaddingLeft()I

    move-result v1

    .line 60
    iget-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    .line 61
    invoke-virtual {p0}, Lcom/twitter/android/av/card/AudioCardLayout;->getPaddingTop()I

    move-result v2

    iget-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v2

    .line 63
    iget-object v2, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 63
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 66
    iget-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    .line 68
    invoke-virtual {p0}, Lcom/twitter/android/av/card/AudioCardLayout;->getPaddingTop()I

    move-result v2

    iget-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v2

    .line 70
    iget-object v2, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 70
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 73
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    iget-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    iget-object v1, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/av/card/AudioCardLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 42
    iget-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 45
    const/high16 v0, -0x80000000

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 46
    iget-object v1, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/av/card/AudioCardLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 48
    iget-object v0, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v7, v0, v1

    .line 49
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 50
    iget-object v5, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/av/card/AudioCardLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/av/card/AudioCardLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/twitter/android/av/card/AudioCardLayout;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/av/card/AudioCardLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/av/card/AudioCardLayout;->setMeasuredDimension(II)V

    .line 54
    return-void
.end method
