.class Lcom/twitter/android/periscope/x;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ab;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v1, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    invoke-static {v1, v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(Lcom/twitter/android/periscope/PeriscopePlayerActivity;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/TwitterUser;

    .line 200
    iget-object v0, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->b(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/android/moments/ui/fullscreen/er;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->b(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/android/moments/ui/fullscreen/er;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v1}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->c(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->d(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->d(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->J()V

    .line 205
    iget-object v0, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->d(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v1}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->c(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->setProfileUser(Lcom/twitter/model/core/TwitterUser;)V

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->d(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/twitter/android/periscope/x;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->d(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->K()V

    goto :goto_0
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1}, Lcom/twitter/android/periscope/x;->a(Lcom/twitter/util/collection/ab;)V

    return-void
.end method
