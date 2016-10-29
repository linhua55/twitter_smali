.class final Ldmp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldms;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ldmr;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLdmr;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Ldmp;->a:Z

    iput-object p2, p0, Ldmp;->b:Ldmr;

    iput-object p3, p0, Ldmp;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 65
    iget-boolean v0, p0, Ldmp;->a:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Ldmp;->b:Ldmr;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ldmr;->a(Landroid/content/Intent;)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldmp;->c:Landroid/content/Context;

    const-class v2, Ltv/periscope/android/library/PeriscopeInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string/jumbo v1, "create_broadcast"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Ldmp;->b:Ldmr;

    invoke-interface {v1, v0}, Ldmr;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
