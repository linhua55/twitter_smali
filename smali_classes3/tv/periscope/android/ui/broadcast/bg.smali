.class Ltv/periscope/android/ui/broadcast/bg;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/animation/ObjectAnimator;

.field final synthetic b:Ltv/periscope/android/ui/broadcast/ChatRoomView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bg;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/bg;->a:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 410
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bg;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 411
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bg;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bg;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bg;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 414
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 404
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bg;->a:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bg;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;

    move-result-object v2

    invoke-virtual {v2}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 405
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bg;->b:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 406
    return-void
.end method
