.class Ltv/periscope/android/ui/broadcaster/e;
.super Ltv/periscope/android/view/aa;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ltv/periscope/android/ui/broadcaster/BroadcasterView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Ltv/periscope/android/ui/broadcaster/e;->b:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    iput-object p3, p0, Ltv/periscope/android/ui/broadcaster/e;->a:Landroid/view/View;

    invoke-direct {p0, p2}, Ltv/periscope/android/view/aa;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/e;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void
.end method
