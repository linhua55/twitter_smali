.class Lcom/twitter/library/av/playback/bx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/exoplayer/player/u;


# instance fields
.field final synthetic a:Lcom/twitter/library/av/playback/bw;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/bw;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/twitter/library/av/playback/bx;->a:Lcom/twitter/library/av/playback/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/library/av/playback/bx;->a:Lcom/twitter/library/av/playback/bw;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bw;->g:Lcom/twitter/library/av/s;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/twitter/library/av/playback/bx;->a:Lcom/twitter/library/av/playback/bw;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bw;->g:Lcom/twitter/library/av/s;

    invoke-interface {v0, p1, p2}, Lcom/twitter/library/av/s;->a(D)V

    .line 78
    :cond_0
    return-void
.end method

.method public a(Ltv/periscope/android/exoplayer/player/w;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/library/av/playback/bx;->a:Lcom/twitter/library/av/playback/bw;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bw;->g:Lcom/twitter/library/av/s;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/twitter/library/av/playback/bx;->a:Lcom/twitter/library/av/playback/bw;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bw;->g:Lcom/twitter/library/av/s;

    new-instance v1, Lcom/twitter/library/av/playback/by;

    invoke-direct {v1, p1}, Lcom/twitter/library/av/playback/by;-><init>(Ltv/periscope/android/exoplayer/player/w;)V

    invoke-interface {v0, v1}, Lcom/twitter/library/av/s;->a(Lcom/twitter/library/av/ab;)V

    .line 72
    :cond_0
    return-void
.end method
