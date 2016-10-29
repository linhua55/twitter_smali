.class Ltv/periscope/android/ui/broadcaster/c;
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
    .line 80
    iput-object p1, p0, Ltv/periscope/android/ui/broadcaster/c;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/c;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/c;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->a(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->a(Ltv/periscope/android/ui/broadcaster/BroadcasterView;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 84
    return-void
.end method
