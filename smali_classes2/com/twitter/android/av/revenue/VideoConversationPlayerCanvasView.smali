.class public Lcom/twitter/android/av/revenue/VideoConversationPlayerCanvasView;
.super Lcom/twitter/library/av/VideoPlayerView;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/library/av/VideoPlayerView;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/VideoPlayerView$Mode;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/av/revenue/VideoConversationCardData;Lcom/twitter/android/card/d;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationPlayerCanvasView;->a:Lcom/twitter/library/av/control/h;

    instance-of v0, v0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/twitter/android/av/revenue/VideoConversationPlayerCanvasView;->a:Lcom/twitter/library/av/control/h;

    check-cast v0, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;

    .line 61
    invoke-virtual {v0, p0, p1, p2}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->a(Lcom/twitter/android/av/revenue/VideoConversationPlayerCanvasView;Lcom/twitter/android/av/revenue/VideoConversationCardData;Lcom/twitter/android/card/d;)V

    .line 63
    :cond_0
    return-void
.end method

.method protected getEmbeddedChromeMode()I
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/twitter/android/av/revenue/j;->a:[I

    iget-object v1, p0, Lcom/twitter/android/av/revenue/VideoConversationPlayerCanvasView;->b:Lcom/twitter/library/av/VideoPlayerView$Mode;

    invoke-virtual {v1}, Lcom/twitter/library/av/VideoPlayerView$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-super {p0}, Lcom/twitter/library/av/VideoPlayerView;->getEmbeddedChromeMode()I

    move-result v0

    :goto_0
    return v0

    .line 46
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
