.class Lcom/twitter/library/av/playback/ap;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/library/av/playback/AVPlayer;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;I)V
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/twitter/library/av/playback/ap;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 405
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/ap;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 406
    return-void
.end method
