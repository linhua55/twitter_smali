.class Ltv/periscope/android/ui/broadcast/moderator/j;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:F

.field final synthetic b:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;F)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/moderator/j;->b:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    iput p2, p0, Ltv/periscope/android/ui/broadcast/moderator/j;->a:F

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 574
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/j;->b:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->k(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Ltv/periscope/android/ui/broadcast/moderator/j;->a:F

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/moderator/j;->b:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->m(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/moderator/j;->b:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->n(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 575
    return-void
.end method
