.class Ltv/periscope/android/ui/broadcast/ce;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/cd;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/cd;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ce;->a:Ltv/periscope/android/ui/broadcast/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ce;->a:Ltv/periscope/android/ui/broadcast/cd;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/cd;->a(Ltv/periscope/android/ui/broadcast/cd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 94
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ce;->a:Ltv/periscope/android/ui/broadcast/cd;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/cd;->b(Ltv/periscope/android/ui/broadcast/cd;)Ltv/periscope/android/ui/broadcast/moderator/a;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/a;->a()V

    .line 96
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ce;->a:Ltv/periscope/android/ui/broadcast/cd;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/cd;->c(Ltv/periscope/android/ui/broadcast/cd;)Ltv/periscope/android/ui/broadcast/moderator/b;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/moderator/b;->b()V

    .line 98
    :cond_0
    return-void
.end method
