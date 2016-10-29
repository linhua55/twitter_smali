.class final Lcom/twitter/android/ti;
.super Landroid/view/animation/Animation;
.source "Twttr"


# instance fields
.field final a:I

.field final b:I

.field final c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 788
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 789
    iput-object p1, p0, Lcom/twitter/android/ti;->c:Landroid/view/View;

    .line 790
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ti;->a:I

    .line 791
    iput p2, p0, Lcom/twitter/android/ti;->b:I

    .line 793
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/ti;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 794
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 798
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 799
    iget v0, p0, Lcom/twitter/android/ti;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/twitter/android/ti;->b:I

    iget v2, p0, Lcom/twitter/android/ti;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 801
    iget-object v1, p0, Lcom/twitter/android/ti;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 802
    iget-object v0, p0, Lcom/twitter/android/ti;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 803
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x1

    return v0
.end method
