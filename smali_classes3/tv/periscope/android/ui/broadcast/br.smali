.class Ltv/periscope/android/ui/broadcast/br;
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
    .line 240
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/br;->a:Ltv/periscope/android/ui/broadcast/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/br;->a:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/br;->a:Ltv/periscope/android/ui/broadcast/bo;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/bo;->g:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const-string/jumbo v0, "PlayerHelper"

    const-string/jumbo v1, "Buffering for more than 1000, showing loading bars."

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/br;->a:Ltv/periscope/android/ui/broadcast/bo;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/bo;->c:Ltv/periscope/model/o;

    invoke-virtual {v0}, Ltv/periscope/model/o;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/br;->a:Ltv/periscope/android/ui/broadcast/bo;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/br;->a:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/bo;->n()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/p;->ps__trying_to_reconnect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/player/c;->a(Ljava/lang/String;)V

    .line 254
    :cond_1
    :goto_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/br;->a:Ltv/periscope/android/ui/broadcast/bo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcast/bo;->a(Ltv/periscope/android/ui/broadcast/bo;Z)Z

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/br;->a:Ltv/periscope/android/ui/broadcast/bo;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/bo;->a:Ltv/periscope/android/player/c;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/br;->a:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/bo;->n()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/p;->ps__loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/android/player/c;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
