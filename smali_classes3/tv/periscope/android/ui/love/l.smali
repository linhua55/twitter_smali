.class Ltv/periscope/android/ui/love/l;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/love/HeartView;

.field final synthetic b:F

.field final synthetic c:Ltv/periscope/android/ui/love/h;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/love/h;Ltv/periscope/android/ui/love/HeartView;F)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Ltv/periscope/android/ui/love/l;->c:Ltv/periscope/android/ui/love/h;

    iput-object p2, p0, Ltv/periscope/android/ui/love/l;->a:Ltv/periscope/android/ui/love/HeartView;

    iput p3, p0, Ltv/periscope/android/ui/love/l;->b:F

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 103
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v2, p0, Ltv/periscope/android/ui/love/l;->a:Ltv/periscope/android/ui/love/HeartView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v6, [F

    iget v5, p0, Ltv/periscope/android/ui/love/l;->b:F

    aput v5, v4, v8

    aput v7, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 108
    iget-object v3, p0, Ltv/periscope/android/ui/love/l;->a:Ltv/periscope/android/ui/love/HeartView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    iget v6, p0, Ltv/periscope/android/ui/love/l;->b:F

    aput v6, v5, v8

    aput v7, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 114
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 115
    iget-object v1, p0, Ltv/periscope/android/ui/love/l;->c:Ltv/periscope/android/ui/love/h;

    invoke-static {v1}, Ltv/periscope/android/ui/love/h;->d(Ltv/periscope/android/ui/love/h;)Ltv/periscope/android/view/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 117
    return-void
.end method
