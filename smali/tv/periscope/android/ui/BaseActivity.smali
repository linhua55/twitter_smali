.class public abstract Ltv/periscope/android/ui/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/xspotlivin/analytics/summary/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Ltv/periscope/android/ui/BaseActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Ltv/periscope/android/ui/BaseActivity;->c()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/BaseActivity;->a(Ljava/lang/String;)Lcom/xspotlivin/analytics/summary/d;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/BaseActivity;->a:Lcom/xspotlivin/analytics/summary/d;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/xspotlivin/analytics/summary/d;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/xspotlivin/analytics/summary/b;

    invoke-direct {v0}, Lcom/xspotlivin/analytics/summary/b;-><init>()V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Ltv/periscope/android/ui/BaseActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldmi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Ltv/periscope/android/ui/BaseActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/BaseActivity;->a:Lcom/xspotlivin/analytics/summary/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/BaseActivity;->a:Lcom/xspotlivin/analytics/summary/d;

    invoke-interface {v0}, Lcom/xspotlivin/analytics/summary/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-direct {p0}, Ltv/periscope/android/ui/BaseActivity;->e()V

    .line 22
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 35
    iget-object v0, p0, Ltv/periscope/android/ui/BaseActivity;->a:Lcom/xspotlivin/analytics/summary/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/periscope/android/ui/BaseActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Ltv/periscope/android/ui/BaseActivity;->a:Lcom/xspotlivin/analytics/summary/d;

    invoke-static {v0}, Ldmi;->a(Lcom/xspotlivin/analytics/summary/d;)V

    .line 38
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 27
    const-string/jumbo v0, "activity"

    invoke-virtual {p0}, Ltv/periscope/android/ui/BaseActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ltv/periscope/android/ui/BaseActivity;->e()V

    .line 29
    return-void
.end method
