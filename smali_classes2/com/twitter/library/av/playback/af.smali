.class Lcom/twitter/library/av/playback/af;
.super Lcom/twitter/library/av/playback/cc;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/av/playback/cc",
        "<",
        "Lcom/twitter/library/av/playback/AVMediaPlayer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/av/playback/ac;

.field final synthetic b:Lcom/twitter/library/av/playback/ae;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ae;Lcom/twitter/library/av/playback/ac;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/twitter/library/av/playback/af;->b:Lcom/twitter/library/av/playback/ae;

    iput-object p2, p0, Lcom/twitter/library/av/playback/af;->a:Lcom/twitter/library/av/playback/ac;

    invoke-direct {p0}, Lcom/twitter/library/av/playback/cc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/av/playback/AVMediaPlayer;
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/library/av/playback/af;->a:Lcom/twitter/library/av/playback/ac;

    iget-object v0, v0, Lcom/twitter/library/av/playback/ac;->a:Lcom/twitter/model/av/AVMedia;

    .line 61
    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->g()I

    move-result v1

    .line 62
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 63
    new-instance v0, Lcom/twitter/library/av/playback/p;

    iget-object v1, p0, Lcom/twitter/library/av/playback/af;->a:Lcom/twitter/library/av/playback/ac;

    new-instance v2, Lcom/twitter/library/av/playback/ExoPlayerHelper;

    invoke-direct {v2}, Lcom/twitter/library/av/playback/ExoPlayerHelper;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/twitter/library/av/playback/p;-><init>(Lcom/twitter/library/av/playback/ac;Lcom/twitter/library/av/playback/ExoPlayerHelper;)V

    .line 75
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    .line 65
    new-instance v1, Ltv/periscope/android/exoplayer/player/c;

    iget-object v2, p0, Lcom/twitter/library/av/playback/af;->a:Lcom/twitter/library/av/playback/ac;

    iget-object v2, v2, Lcom/twitter/library/av/playback/ac;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/av/playback/af;->a:Lcom/twitter/library/av/playback/ac;

    iget-object v3, v3, Lcom/twitter/library/av/playback/ac;->c:Landroid/content/Context;

    .line 66
    invoke-static {v3}, Lcom/twitter/library/network/at;->a(Landroid/content/Context;)Lcom/twitter/library/network/at;

    move-result-object v3

    iget-object v3, v3, Lcom/twitter/library/network/at;->e:Lcom/twitter/library/network/ax;

    invoke-virtual {v3}, Lcom/twitter/library/network/ax;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Ltv/periscope/android/exoplayer/player/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/twitter/library/av/playback/bw;

    iget-object v2, p0, Lcom/twitter/library/av/playback/af;->a:Lcom/twitter/library/av/playback/ac;

    new-instance v3, Ltv/periscope/android/exoplayer/player/e;

    invoke-direct {v3, v1}, Ltv/periscope/android/exoplayer/player/e;-><init>(Ltv/periscope/android/exoplayer/player/k;)V

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/av/playback/bw;-><init>(Lcom/twitter/library/av/playback/ac;Ltv/periscope/android/exoplayer/player/e;)V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x2

    if-ne v0, v1, :cond_2

    .line 69
    new-instance v0, Lcom/twitter/library/av/playback/t;

    iget-object v1, p0, Lcom/twitter/library/av/playback/af;->a:Lcom/twitter/library/av/playback/ac;

    new-instance v2, Lcom/twitter/library/av/playback/ExoPlayerHelper;

    invoke-direct {v2}, Lcom/twitter/library/av/playback/ExoPlayerHelper;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/twitter/library/av/playback/t;-><init>(Lcom/twitter/library/av/playback/ac;Lcom/twitter/library/av/playback/ExoPlayerHelper;)V

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/t;->a()Lcom/twitter/library/av/playback/r;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x4

    if-ne v0, v1, :cond_3

    .line 71
    new-instance v0, Lcom/twitter/library/av/playback/o;

    iget-object v1, p0, Lcom/twitter/library/av/playback/af;->a:Lcom/twitter/library/av/playback/ac;

    invoke-direct {v0, v1}, Lcom/twitter/library/av/playback/o;-><init>(Lcom/twitter/library/av/playback/ac;)V

    goto :goto_0

    .line 73
    :cond_3
    new-instance v0, Lcom/twitter/library/av/playback/z;

    iget-object v1, p0, Lcom/twitter/library/av/playback/af;->a:Lcom/twitter/library/av/playback/ac;

    invoke-direct {v0, v1}, Lcom/twitter/library/av/playback/z;-><init>(Lcom/twitter/library/av/playback/ac;)V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/af;->a()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    return-object v0
.end method
