.class Lcom/twitter/android/periscope/aa;
.super Ltv/periscope/android/ui/broadcast/at;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/exoplayer/player/g;
.implements Ltv/periscope/android/exoplayer/player/j;


# instance fields
.field private final b:Lcom/twitter/library/av/playback/bw;


# direct methods
.method constructor <init>(Ltv/periscope/android/player/b;Lcom/twitter/library/av/playback/bw;Ltv/periscope/android/data/b;)V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p2}, Lcom/twitter/library/av/playback/bw;->r()Ltv/periscope/android/exoplayer/player/e;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Ltv/periscope/android/ui/broadcast/at;-><init>(Ltv/periscope/android/player/b;Ltv/periscope/android/exoplayer/player/e;Ltv/periscope/android/data/b;)V

    .line 25
    iput-object p2, p0, Lcom/twitter/android/periscope/aa;->b:Lcom/twitter/library/av/playback/bw;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->b:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, p0}, Lcom/twitter/library/av/playback/bw;->a(Ltv/periscope/android/exoplayer/player/j;)V

    .line 30
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->b:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, p0}, Lcom/twitter/library/av/playback/bw;->a(Ltv/periscope/android/exoplayer/player/g;)V

    .line 31
    return-void
.end method

.method public a(IIIF)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->a:Ltv/periscope/android/ui/broadcast/am;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltv/periscope/android/ui/broadcast/am;->a(IIIF)V

    .line 58
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->a:Ltv/periscope/android/ui/broadcast/am;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/am;->a(Ljava/lang/Exception;)V

    .line 50
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->a:Ltv/periscope/android/ui/broadcast/am;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/am;->a(Ljava/util/List;)V

    .line 72
    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->a:Ltv/periscope/android/ui/broadcast/am;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/am;->a(ZI)V

    .line 43
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->b:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/bw;->a(Ltv/periscope/android/exoplayer/player/j;)V

    .line 35
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->b:Lcom/twitter/library/av/playback/bw;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/bw;->a(Ltv/periscope/android/exoplayer/player/g;)V

    .line 36
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->a:Ltv/periscope/android/ui/broadcast/am;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/twitter/android/periscope/aa;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->c()V

    .line 65
    :cond_0
    return-void
.end method
