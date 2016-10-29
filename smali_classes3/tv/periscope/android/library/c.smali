.class Ltv/periscope/android/library/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Ltv/periscope/android/library/b;


# direct methods
.method constructor <init>(Ltv/periscope/android/library/b;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/au;->a()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 103
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/au;->f()V

    .line 106
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;Ltv/periscope/android/ui/broadcast/au;)Ltv/periscope/android/ui/broadcast/au;

    .line 108
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/au;->a()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 84
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/au;->d()V

    .line 86
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/au;->a()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 77
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/au;->c()V

    .line 79
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/au;->a()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 70
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/au;->b()V

    .line 72
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/au;->a()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 91
    iget-object v0, p0, Ltv/periscope/android/library/c;->a:Ltv/periscope/android/library/b;

    invoke-static {v0}, Ltv/periscope/android/library/b;->a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/au;->e()V

    .line 93
    :cond_0
    return-void
.end method
