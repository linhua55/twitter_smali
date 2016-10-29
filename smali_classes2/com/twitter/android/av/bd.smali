.class public Lcom/twitter/android/av/bd;
.super Lcom/twitter/android/av/bj;
.source "Twttr"


# instance fields
.field private final k:Ljava/lang/String;

.field private final l:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

.field private final m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/twitter/library/api/periscope/PeriscopeCapiModel;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/twitter/android/av/bj;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/android/av/bd;->k:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/twitter/android/av/bd;->l:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    .line 29
    iput-wide p2, p0, Lcom/twitter/android/av/bd;->m:J

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/twitter/app/common/base/z;

    invoke-direct {v0}, Lcom/twitter/app/common/base/z;-><init>()V

    iget-boolean v1, p0, Lcom/twitter/android/av/bd;->f:Z

    .line 36
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v0

    const-class v1, Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    .line 37
    invoke-virtual {v0, p1, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/twitter/android/av/bd;->a(Landroid/content/Intent;)V

    .line 39
    return-object v0
.end method

.method a(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    const-string/jumbo v0, "tw"

    iget-object v1, p0, Lcom/twitter/android/av/bd;->j:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-interface {v1}, Lcom/twitter/library/av/playback/AVDataSource;->c()Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v0, "statusId"

    iget-object v1, p0, Lcom/twitter/android/av/bd;->j:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-interface {v1}, Lcom/twitter/library/av/playback/AVDataSource;->c()Lcom/twitter/model/core/Tweet;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 46
    const-string/jumbo v0, "association"

    iget-object v1, p0, Lcom/twitter/android/av/bd;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    const-string/jumbo v0, "is_from_dock"

    iget-boolean v1, p0, Lcom/twitter/android/av/bd;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    const-string/jumbo v0, "is_from_inline"

    iget-boolean v1, p0, Lcom/twitter/android/av/bd;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    const-string/jumbo v0, "show_tw"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    const-string/jumbo v0, "broadcast_id"

    iget-object v1, p0, Lcom/twitter/android/av/bd;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v0, "broadcaster_twitter_user_id"

    iget-wide v2, p0, Lcom/twitter/android/av/bd;->m:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 52
    const-string/jumbo v0, "is_live"

    iget-object v1, p0, Lcom/twitter/android/av/bd;->l:Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    invoke-virtual {v1}, Lcom/twitter/library/api/periscope/PeriscopeCapiModel;->k()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    return-void
.end method
