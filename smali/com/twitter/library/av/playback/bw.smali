.class public Lcom/twitter/library/av/playback/bw;
.super Lcom/twitter/library/av/playback/a;
.source "Twttr"


# instance fields
.field private final a:Ltv/periscope/android/exoplayer/player/e;

.field private o:Ltv/periscope/android/exoplayer/player/t;

.field private p:Ltv/periscope/android/exoplayer/player/j;

.field private q:Ltv/periscope/android/exoplayer/player/g;


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/ac;Ltv/periscope/android/exoplayer/player/e;)V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p2}, Ltv/periscope/android/exoplayer/player/e;->b()Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/av/playback/a;-><init>(Lcom/twitter/library/av/playback/ac;Lcom/google/android/exoplayer/ExoPlayer;)V

    .line 42
    iput-object p2, p0, Lcom/twitter/library/av/playback/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/j;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/library/av/playback/bw;->p:Ltv/periscope/android/exoplayer/player/j;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/t;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/library/av/playback/bw;->o:Ltv/periscope/android/exoplayer/player/t;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/library/av/playback/bw;)Ltv/periscope/android/exoplayer/player/g;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/library/av/playback/bw;->q:Ltv/periscope/android/exoplayer/player/g;

    return-object v0
.end method


# virtual methods
.method public K()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/library/av/playback/bw;->o:Ltv/periscope/android/exoplayer/player/t;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/twitter/library/av/playback/bw;->o:Ltv/periscope/android/exoplayer/player/t;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/t;->a()V

    .line 106
    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/library/av/playback/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, p1}, Ltv/periscope/android/exoplayer/player/e;->a(F)V

    .line 111
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/twitter/library/av/playback/bz;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/bz;-><init>(Lcom/twitter/library/av/playback/bw;)V

    .line 61
    iget-object v1, p0, Lcom/twitter/library/av/playback/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v1, v0}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/j;)V

    .line 62
    iget-object v1, p0, Lcom/twitter/library/av/playback/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v1, v0}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/h;)V

    .line 63
    iget-object v1, p0, Lcom/twitter/library/av/playback/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v1, v0}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/i;)V

    .line 64
    iget-object v1, p0, Lcom/twitter/library/av/playback/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v1, v0}, Ltv/periscope/android/exoplayer/player/e;->a(Ltv/periscope/android/exoplayer/player/g;)V

    .line 66
    new-instance v0, Lcom/twitter/library/av/playback/bx;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/bx;-><init>(Lcom/twitter/library/av/playback/bw;)V

    .line 80
    new-instance v1, Ltv/periscope/android/exoplayer/player/t;

    invoke-direct {v1, v0}, Ltv/periscope/android/exoplayer/player/t;-><init>(Ltv/periscope/android/exoplayer/player/u;)V

    iput-object v1, p0, Lcom/twitter/library/av/playback/bw;->o:Ltv/periscope/android/exoplayer/player/t;

    .line 82
    iget-object v0, p0, Lcom/twitter/library/av/playback/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->c()V

    .line 83
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/twitter/library/av/playback/a;->a(Landroid/view/Surface;)V

    .line 93
    iget-object v0, p0, Lcom/twitter/library/av/playback/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0, p1}, Ltv/periscope/android/exoplayer/player/e;->a(Landroid/view/Surface;)V

    .line 94
    return-void
.end method

.method public a(Ltv/periscope/android/exoplayer/player/g;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/library/av/playback/bw;->q:Ltv/periscope/android/exoplayer/player/g;

    .line 56
    return-void
.end method

.method public a(Ltv/periscope/android/exoplayer/player/j;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/library/av/playback/bw;->p:Ltv/periscope/android/exoplayer/player/j;

    .line 52
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/twitter/library/av/playback/a;->a(Z)V

    .line 99
    iget-object v0, p0, Lcom/twitter/library/av/playback/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->e()V

    .line 100
    return-void
.end method

.method public onPlayerSeekComplete()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public r()Ltv/periscope/android/exoplayer/player/e;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/library/av/playback/bw;->a:Ltv/periscope/android/exoplayer/player/e;

    return-object v0
.end method
