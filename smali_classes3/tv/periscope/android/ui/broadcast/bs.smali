.class Ltv/periscope/android/ui/broadcast/bs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/bo;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/bo;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bs;->a:Ltv/periscope/android/ui/broadcast/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bs;->a:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bs;->a:Ltv/periscope/android/ui/broadcast/bo;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/bo;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bs;->a:Ltv/periscope/android/ui/broadcast/bo;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bs;->a:Ltv/periscope/android/ui/broadcast/bo;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/bo;->a(Ltv/periscope/android/ui/broadcast/bo;)Ltv/periscope/android/ui/broadcast/cd;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/cd;->k()V

    .line 266
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bs;->a:Ltv/periscope/android/ui/broadcast/bo;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/bo;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
