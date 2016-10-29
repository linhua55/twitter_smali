.class Ltv/periscope/android/ui/broadcast/bj;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/animation/ObjectAnimator;

.field final synthetic b:Ltv/periscope/android/ui/broadcast/ChatRoomView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/bj;->a:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 502
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->a()V

    .line 503
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setAlpha(F)V

    .line 504
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setAlpha(F)V

    .line 505
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->setAlpha(F)V

    .line 507
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 508
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->g(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->post(Ljava/lang/Runnable;)Z

    .line 509
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 491
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v0

    .line 493
    :goto_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bj;->a:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v3}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v3

    invoke-virtual {v3}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    int-to-float v0, v0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 494
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->d()V

    .line 495
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->i()V

    .line 496
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    move-result-object v0

    invoke-virtual {v0, v4}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setVisibility(I)V

    .line 498
    return-void

    .line 492
    :cond_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bj;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method
