.class Ltv/periscope/android/view/h;
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
    .line 353
    iput-object p1, p0, Ltv/periscope/android/view/h;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Ltv/periscope/android/view/h;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->c(Ltv/periscope/android/view/ActionSheet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 356
    iget-object v0, p0, Ltv/periscope/android/view/h;->a:Ltv/periscope/android/view/ActionSheet;

    invoke-static {v0}, Ltv/periscope/android/view/ActionSheet;->c(Ltv/periscope/android/view/ActionSheet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 357
    return-void
.end method
