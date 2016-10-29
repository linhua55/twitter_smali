.class Lcom/twitter/library/av/playback/bi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twitter/library/av/playback/bf;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/bf;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/twitter/library/av/playback/bi;->c:Lcom/twitter/library/av/playback/bf;

    iput p2, p0, Lcom/twitter/library/av/playback/bi;->a:I

    iput-object p3, p0, Lcom/twitter/library/av/playback/bi;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/library/av/playback/bi;->c:Lcom/twitter/library/av/playback/bf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->h()Lbvr;

    move-result-object v0

    new-instance v1, Lbwe;

    iget v2, p0, Lcom/twitter/library/av/playback/bi;->a:I

    iget-object v3, p0, Lcom/twitter/library/av/playback/bi;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lbwe;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    .line 90
    iget-object v0, p0, Lcom/twitter/library/av/playback/bi;->c:Lcom/twitter/library/av/playback/bf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/twitter/library/av/playback/bi;->c:Lcom/twitter/library/av/playback/bf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/bi;->c:Lcom/twitter/library/av/playback/bf;

    iget v1, p0, Lcom/twitter/library/av/playback/bi;->a:I

    iget-object v2, p0, Lcom/twitter/library/av/playback/bi;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/av/playback/bf;->a(Lcom/twitter/library/av/playback/bf;ILjava/lang/String;)V

    goto :goto_0
.end method
