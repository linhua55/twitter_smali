.class Ltv/periscope/android/view/ac;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Ltv/periscope/android/view/FuzzyBalls;


# direct methods
.method constructor <init>(Ltv/periscope/android/view/FuzzyBalls;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Ltv/periscope/android/view/ac;->a:Ltv/periscope/android/view/FuzzyBalls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Ltv/periscope/android/view/ac;->a:Ltv/periscope/android/view/FuzzyBalls;

    invoke-static {v0}, Ltv/periscope/android/view/FuzzyBalls;->a(Ltv/periscope/android/view/FuzzyBalls;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 79
    return-void
.end method
