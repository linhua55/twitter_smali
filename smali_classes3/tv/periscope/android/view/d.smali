.class Ltv/periscope/android/view/d;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/animation/ValueAnimator;

.field final synthetic b:Ltv/periscope/android/view/ActionSheet;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/ActionSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Ltv/periscope/android/view/d;->b:Ltv/periscope/android/view/ActionSheet;

    iput-object p2, p0, Ltv/periscope/android/view/d;->a:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Ltv/periscope/android/view/d;->b:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->e(Ltv/periscope/android/view/ActionSheet;)Ltv/periscope/android/view/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/view/ah;->a(I)V

    .line 443
    iget-object v0, p0, Ltv/periscope/android/view/d;->b:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->b(Ltv/periscope/android/view/ActionSheet;)Ltv/periscope/android/view/CarouselView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/view/CarouselView;->requestLayout()V

    .line 444
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v0, p0, Ltv/periscope/android/view/d;->b:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->b(Ltv/periscope/android/view/ActionSheet;)Ltv/periscope/android/view/CarouselView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/view/CarouselView;->getWidth()I

    move-result v0

    .line 437
    iget-object v1, p0, Ltv/periscope/android/view/d;->a:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    div-int/lit8 v0, v0, 0x2

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 438
    return-void
.end method
