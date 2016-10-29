.class Lcom/twitter/android/av/card/f;
.super Lcom/twitter/android/av/bq;
.source "Twttr"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/twitter/android/av/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/library/av/VideoPlayerView;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/twitter/android/av/card/c;->a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;Z)Lcom/twitter/library/av/VideoPlayerView;

    move-result-object v0

    return-object v0
.end method
