.class Lcom/twitter/library/av/playback/aw;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/av/playback/AVPlayer;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;)V
    .locals 0

    .prologue
    .line 1539
    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    .line 1540
    iput-object p1, p0, Lcom/twitter/library/av/playback/aw;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 1541
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1545
    invoke-super {p0, p1}, Lcom/twitter/library/client/ad;->a(Lcom/twitter/library/client/Session;)V

    .line 1549
    iget-object v0, p0, Lcom/twitter/library/av/playback/aw;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0, v1, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(ZZ)V

    .line 1550
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1554
    invoke-super {p0, p1, p2}, Lcom/twitter/library/client/ad;->a(Lcom/twitter/library/client/Session;Z)V

    .line 1558
    iget-object v0, p0, Lcom/twitter/library/av/playback/aw;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0, v1, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(ZZ)V

    .line 1559
    return-void
.end method
