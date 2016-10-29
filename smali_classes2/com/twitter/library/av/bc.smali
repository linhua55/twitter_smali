.class public Lcom/twitter/library/av/bc;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;)Lcom/twitter/library/av/VideoViewContainer;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/library/av/be;

    invoke-direct {v0}, Lcom/twitter/library/av/be;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/library/av/bc;->a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/be;)Lcom/twitter/library/av/VideoViewContainer;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/be;)Lcom/twitter/library/av/VideoViewContainer;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lbxk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/twitter/library/av/SimpleVideoViewContainer;

    invoke-direct {v0, p1, p2, p3}, Lcom/twitter/library/av/SimpleVideoViewContainer;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/be;)V

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/library/av/SynchronizingVideoViewContainer;

    invoke-direct {v0, p1, p2, p3}, Lcom/twitter/library/av/SynchronizingVideoViewContainer;-><init>(Landroid/content/Context;Lcom/twitter/library/av/playback/AVPlayerAttachment;Lcom/twitter/library/av/be;)V

    goto :goto_0
.end method
