.class Ltv/periscope/android/ui/broadcaster/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Ltv/periscope/android/ui/broadcaster/b;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/b;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->a(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 78
    return-void
.end method
