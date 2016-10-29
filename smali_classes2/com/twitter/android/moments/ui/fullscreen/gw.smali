.class Lcom/twitter/android/moments/ui/fullscreen/gw;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/av/playback/ao;Lbxa;)Lcom/twitter/android/moments/ui/video/b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/twitter/library/av/playback/bb;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/bb;-><init>()V

    invoke-virtual {v0, p2}, Lcom/twitter/library/av/playback/bb;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/twitter/library/av/playback/ax;

    invoke-direct {v1, p3}, Lcom/twitter/library/av/playback/ax;-><init>(Lcom/twitter/library/av/playback/ao;)V

    .line 23
    invoke-virtual {v1, v0}, Lcom/twitter/library/av/playback/ax;->a(Lcom/twitter/library/av/playback/ba;)Lcom/twitter/library/av/playback/ax;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v2}, Lcom/twitter/library/av/playback/ax;->b(Z)Lcom/twitter/library/av/playback/ax;

    move-result-object v1

    .line 25
    invoke-virtual {v1, p4}, Lcom/twitter/library/av/playback/ax;->a(Lbxa;)Lcom/twitter/library/av/playback/ax;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v2}, Lcom/twitter/library/av/playback/ax;->a(Z)Lcom/twitter/library/av/playback/ax;

    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Lcom/twitter/library/av/playback/ax;->a(Landroid/content/Context;)Lcom/twitter/library/av/playback/ax;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/twitter/library/av/playback/ax;->a()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    move-result-object v1

    .line 29
    new-instance v2, Lcom/twitter/android/moments/ui/video/b;

    .line 30
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/moments/ui/video/b;-><init>(Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/playback/AVDataSource;)V

    .line 31
    return-object v2
.end method
