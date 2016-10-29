.class Ltv/periscope/android/ui/broadcast/bh;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/animation/ObjectAnimator;

.field final synthetic b:Ltv/periscope/android/ui/broadcast/ChatRoomView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bh;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/bh;->a:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 440
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bh;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bh;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setAlpha(F)V

    .line 442
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bh;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setAlpha(F)V

    .line 443
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bh;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bh;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 444
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 433
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bh;->a:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/bh;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v3}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v3

    invoke-virtual {v3}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/bh;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v4}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    move-result-object v4

    invoke-virtual {v4}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->getButtonsTranslation()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 434
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bh;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bh;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    move-result-object v0

    invoke-virtual {v0, v5}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setVisibility(I)V

    .line 436
    return-void
.end method
