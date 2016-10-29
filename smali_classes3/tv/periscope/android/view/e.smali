.class Ltv/periscope/android/view/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Ltv/periscope/android/view/ActionSheet;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/ActionSheet;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Ltv/periscope/android/view/e;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Ltv/periscope/android/view/e;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->e(Ltv/periscope/android/view/ActionSheet;)Ltv/periscope/android/view/ah;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ltv/periscope/android/view/ah;->a(I)V

    .line 450
    iget-object v0, p0, Ltv/periscope/android/view/e;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->b(Ltv/periscope/android/view/ActionSheet;)Ltv/periscope/android/view/CarouselView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/view/CarouselView;->requestLayout()V

    .line 451
    return-void
.end method
