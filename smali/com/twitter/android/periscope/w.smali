.class Lcom/twitter/android/periscope/w;
.super Landroid/view/OrientationEventListener;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/periscope/PeriscopePlayerActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/twitter/android/periscope/w;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/twitter/android/periscope/w;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/library/av/playback/bw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/twitter/android/periscope/w;->a:Lcom/twitter/android/periscope/PeriscopePlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/periscope/PeriscopePlayerActivity;->a(Lcom/twitter/android/periscope/PeriscopePlayerActivity;)Lcom/twitter/library/av/playback/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/bw;->K()V

    .line 154
    :cond_0
    return-void
.end method
