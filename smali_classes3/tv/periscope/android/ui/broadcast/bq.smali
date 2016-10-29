.class Ltv/periscope/android/ui/broadcast/bq;
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
    .line 230
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/bq;->a:Ltv/periscope/android/ui/broadcast/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bq;->a:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bq;->a:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->q()V

    goto :goto_0
.end method
