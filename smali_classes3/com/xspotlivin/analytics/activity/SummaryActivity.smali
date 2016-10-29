.class public abstract Lcom/xspotlivin/analytics/activity/SummaryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/xspotlivin/analytics/summary/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Lcom/xspotlivin/analytics/summary/d;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()Z
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 28
    iget-object v0, p0, Lcom/xspotlivin/analytics/activity/SummaryActivity;->a:Lcom/xspotlivin/analytics/summary/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xspotlivin/analytics/activity/SummaryActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/xspotlivin/analytics/AnalyticsManager;->a()Lcom/xspotlivin/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xspotlivin/analytics/activity/SummaryActivity;->a:Lcom/xspotlivin/analytics/summary/d;

    invoke-virtual {v0, v1}, Lcom/xspotlivin/analytics/AnalyticsManager;->a(Lcom/xspotlivin/analytics/summary/d;)V

    .line 31
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 16
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 18
    invoke-static {}, Lcom/xspotlivin/analytics/AnalyticsManager;->a()Lcom/xspotlivin/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xspotlivin/analytics/activity/SummaryActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xspotlivin/analytics/AnalyticsManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/xspotlivin/analytics/activity/SummaryActivity;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xspotlivin/analytics/activity/SummaryActivity;->a:Lcom/xspotlivin/analytics/summary/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xspotlivin/analytics/activity/SummaryActivity;->a:Lcom/xspotlivin/analytics/summary/d;

    invoke-interface {v1}, Lcom/xspotlivin/analytics/summary/d;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xspotlivin/analytics/activity/SummaryActivity;->a(Ljava/lang/String;)Lcom/xspotlivin/analytics/summary/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xspotlivin/analytics/activity/SummaryActivity;->a:Lcom/xspotlivin/analytics/summary/d;

    .line 22
    :cond_1
    return-void
.end method
