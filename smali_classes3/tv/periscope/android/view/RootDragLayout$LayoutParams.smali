.class public Ltv/periscope/android/view/RootDragLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "Twttr"


# instance fields
.field a:F

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 708
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 697
    const/4 v0, -0x1

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->b:I

    .line 709
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 700
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 697
    const/4 v0, -0x1

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->b:I

    .line 702
    invoke-static {}, Ltv/periscope/android/view/RootDragLayout;->c()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 703
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->b:I

    .line 704
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 705
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 716
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    const/4 v0, -0x1

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->b:I

    .line 717
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 720
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 697
    const/4 v0, -0x1

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->b:I

    .line 721
    return-void
.end method

.method public constructor <init>(Ltv/periscope/android/view/RootDragLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 712
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 697
    const/4 v0, -0x1

    iput v0, p0, Ltv/periscope/android/view/RootDragLayout$LayoutParams;->b:I

    .line 713
    return-void
.end method
