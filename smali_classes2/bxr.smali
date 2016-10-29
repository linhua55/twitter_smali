.class public Lbxr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbxw;


# instance fields
.field final a:Lbxw;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 41
    new-instance v3, Lcom/twitter/library/av/model/a;

    invoke-direct {v3}, Lcom/twitter/library/av/model/a;-><init>()V

    const-string/jumbo v0, "android_periscope_lifecycle_enabled"

    .line 42
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    .line 41
    invoke-direct/range {v0 .. v6}, Lbxr;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/model/a;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Z)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/model/a;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Z)V
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p6, :cond_0

    invoke-interface {p2}, Lcom/twitter/model/av/AVMedia;->g()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 49
    if-nez p4, :cond_2

    .line 51
    invoke-static {}, Lcom/twitter/android/periscope/t;->a()Lcom/twitter/android/periscope/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/periscope/t;->f()Ltv/periscope/android/api/ApiManager;

    move-result-object v5

    .line 53
    :goto_0
    if-nez p5, :cond_1

    .line 55
    invoke-static {}, Lcom/twitter/android/periscope/t;->a()Lcom/twitter/android/periscope/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/periscope/t;->e()Lde/greenrobot/event/c;

    move-result-object v6

    .line 57
    :goto_1
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayer;->e()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/twitter/library/av/playback/PeriscopeDataSource;

    .line 58
    new-instance v0, Lbxt;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/PeriscopeDataSource;->p()Lcom/twitter/library/api/periscope/PeriscopeCapiModel;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lbxt;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/model/a;Lcom/twitter/library/api/periscope/PeriscopeCapiModel;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;)V

    iput-object v0, p0, Lbxr;->a:Lbxw;

    .line 63
    :goto_2
    return-void

    .line 61
    :cond_0
    new-instance v0, Lbxq;

    invoke-direct {v0}, Lbxq;-><init>()V

    iput-object v0, p0, Lbxr;->a:Lbxw;

    goto :goto_2

    :cond_1
    move-object v6, p5

    goto :goto_1

    :cond_2
    move-object v5, p4

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lbxr;->a:Lbxw;

    invoke-interface {v0}, Lbxw;->a()V

    .line 73
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lbxr;->a:Lbxw;

    invoke-interface {v0, p1}, Lbxw;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 93
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;J)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lbxr;->a:Lbxw;

    invoke-interface {v0, p1, p2, p3}, Lbxw;->a(Lcom/twitter/library/av/playback/bl;J)V

    .line 68
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbxr;->a:Lbxw;

    invoke-interface {v0}, Lbxw;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lbxr;->a:Lbxw;

    invoke-interface {v0}, Lbxw;->c()V

    .line 83
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lbxr;->a:Lbxw;

    invoke-interface {v0}, Lbxw;->d()V

    .line 88
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lbxr;->a:Lbxw;

    invoke-interface {v0}, Lbxw;->e()V

    .line 98
    return-void
.end method
