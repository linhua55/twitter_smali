.class Ltv/periscope/android/ui/broadcast/an;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcast/am;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/am;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/an;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/an;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/am;->a(Ltv/periscope/android/ui/broadcast/am;)Ltv/periscope/model/o;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/an;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/am;->b(Ltv/periscope/android/ui/broadcast/am;)V

    .line 148
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/an;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/am;->c(Ltv/periscope/android/ui/broadcast/am;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
