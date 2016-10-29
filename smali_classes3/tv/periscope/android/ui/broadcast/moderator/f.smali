.class Ltv/periscope/android/ui/broadcast/moderator/f;
.super Ltv/periscope/android/view/am;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/moderator/f;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-direct {p0}, Ltv/periscope/android/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/f;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/f;->a:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->n(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 540
    return-void
.end method
