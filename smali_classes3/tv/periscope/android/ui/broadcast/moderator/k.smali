.class Ltv/periscope/android/ui/broadcast/moderator/k;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/animation/ObjectAnimator;

.field final synthetic b:Landroid/animation/ObjectAnimator;

.field final synthetic c:F

.field final synthetic d:Landroid/animation/ObjectAnimator;

.field final synthetic e:F

.field final synthetic f:Landroid/animation/ObjectAnimator;

.field final synthetic g:Landroid/animation/ObjectAnimator;

.field final synthetic h:F

.field final synthetic i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;FLandroid/animation/ObjectAnimator;FLandroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;F)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->a:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->b:Landroid/animation/ObjectAnimator;

    iput p4, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->c:F

    iput-object p5, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->d:Landroid/animation/ObjectAnimator;

    iput p6, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->e:F

    iput-object p7, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->f:Landroid/animation/ObjectAnimator;

    iput-object p8, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->g:Landroid/animation/ObjectAnimator;

    iput p9, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->h:F

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 593
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 594
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->r(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 596
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 584
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->a:Landroid/animation/ObjectAnimator;

    new-array v1, v7, [F

    aput v4, v1, v5

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->n(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)F

    move-result v2

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 585
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->b:Landroid/animation/ObjectAnimator;

    new-array v1, v7, [F

    aput v4, v1, v5

    iget v2, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->c:F

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v3}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->n(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 586
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->d:Landroid/animation/ObjectAnimator;

    new-array v1, v7, [F

    aput v4, v1, v5

    iget v2, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->e:F

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v3}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->n(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 587
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->f:Landroid/animation/ObjectAnimator;

    new-array v1, v7, [F

    aput v4, v1, v5

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->m(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 588
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->g:Landroid/animation/ObjectAnimator;

    new-array v1, v7, [F

    aput v4, v1, v5

    iget v2, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->h:F

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v3}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->m(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/moderator/k;->i:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v3}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->n(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 589
    return-void
.end method
