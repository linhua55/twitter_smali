.class Ltv/periscope/android/ui/broadcast/bi;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/animation/ObjectAnimator;

.field final synthetic b:Ltv/periscope/android/ui/broadcast/ChatRoomView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/bi;->a:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b()V

    .line 469
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 470
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->g(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 460
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bi;->a:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v3}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v3

    invoke-virtual {v3}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v4}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    move-result-object v4

    invoke-virtual {v4}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->getInfoContainer()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 461
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    move-result-object v0

    invoke-virtual {v0, v5}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bi;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->c()V

    .line 463
    return-void
.end method
