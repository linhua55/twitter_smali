.class Ltv/periscope/android/ui/broadcast/moderator/g;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:F

.field final synthetic b:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;F)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/moderator/g;->b:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    iput p2, p0, Ltv/periscope/android/ui/broadcast/moderator/g;->a:F

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/g;->b:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Ltv/periscope/android/ui/broadcast/moderator/g;->a:F

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/moderator/g;->b:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->n(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTranslationY(F)V

    .line 549
    return-void
.end method
