.class Lcom/twitter/library/av/playback/bj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/model/av/c;

.field final synthetic b:Lcom/twitter/library/av/playback/bf;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/bf;Lcom/twitter/model/av/c;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/twitter/library/av/playback/bj;->b:Lcom/twitter/library/av/playback/bf;

    iput-object p2, p0, Lcom/twitter/library/av/playback/bj;->a:Lcom/twitter/model/av/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/library/av/playback/bj;->b:Lcom/twitter/library/av/playback/bf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->h()Lbvr;

    move-result-object v0

    new-instance v1, Lbwe;

    iget-object v2, p0, Lcom/twitter/library/av/playback/bj;->a:Lcom/twitter/model/av/c;

    iget v2, v2, Lcom/twitter/model/av/c;->b:I

    iget-object v3, p0, Lcom/twitter/library/av/playback/bj;->a:Lcom/twitter/model/av/c;

    iget-object v3, v3, Lcom/twitter/model/av/c;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lbwe;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    .line 106
    return-void
.end method
