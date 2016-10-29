.class Lcom/twitter/library/av/playback/bh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/twitter/library/av/playback/bf;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/bf;ZIIZ)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iput-boolean p2, p0, Lcom/twitter/library/av/playback/bh;->a:Z

    iput p3, p0, Lcom/twitter/library/av/playback/bh;->b:I

    iput p4, p0, Lcom/twitter/library/av/playback/bh;->c:I

    iput-boolean p5, p0, Lcom/twitter/library/av/playback/bh;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    .line 59
    iget-boolean v2, p0, Lcom/twitter/library/av/playback/bh;->a:Z

    .line 60
    iget-object v0, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    iget-object v0, v0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    iget-object v0, v0, Lcom/twitter/library/av/playback/AVPlayer;->i:Lcom/twitter/library/av/playback/az;

    .line 61
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/az;->c()Lcom/twitter/library/av/playback/AVMediaPlayer;

    move-result-object v0

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v3, v3, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    iget-wide v4, v3, Lcom/twitter/library/av/playback/AVPlayer;->l:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 63
    iget-object v2, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v2, v2, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    iget-boolean v2, v2, Lcom/twitter/library/av/playback/AVPlayer;->m:Z

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v2, v2, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v2, v1}, Lcom/twitter/library/av/playback/AVPlayer;->b(Z)V

    .line 68
    :goto_1
    iget-object v2, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v2, v2, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    iput-wide v6, v2, Lcom/twitter/library/av/playback/AVPlayer;->l:J

    .line 72
    :goto_2
    iget-object v2, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v2, v2, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v2, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    .line 74
    iget-object v0, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/AVPlayer;->b(Z)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget v2, p0, Lcom/twitter/library/av/playback/bh;->b:I

    iget v3, p0, Lcom/twitter/library/av/playback/bh;->c:I

    iget-boolean v4, p0, Lcom/twitter/library/av/playback/bh;->d:Z

    invoke-static {v0, v2, v3, v4, v1}, Lcom/twitter/library/av/playback/bf;->a(Lcom/twitter/library/av/playback/bf;IIZZ)V

    .line 79
    return-void

    .line 61
    :cond_1
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer;->b:Lcom/twitter/library/av/playback/AVMediaPlayer;

    goto :goto_0

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/twitter/library/av/playback/bh;->e:Lcom/twitter/library/av/playback/bf;

    iget-object v2, v2, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    iget-wide v2, v2, Lcom/twitter/library/av/playback/AVPlayer;->l:J

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/twitter/library/av/playback/AVMediaPlayer;->b(J)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
