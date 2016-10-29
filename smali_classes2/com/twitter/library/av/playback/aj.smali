.class Lcom/twitter/library/av/playback/aj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

.field final synthetic b:Lcom/twitter/library/av/playback/ag;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ag;Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/twitter/library/av/playback/aj;->b:Lcom/twitter/library/av/playback/ag;

    iput-object p2, p0, Lcom/twitter/library/av/playback/aj;->a:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/twitter/library/av/playback/aj;->b:Lcom/twitter/library/av/playback/ag;

    iget-object v0, v0, Lcom/twitter/library/av/playback/ag;->a:Lcom/twitter/library/av/playback/ab;

    iget-object v1, p0, Lcom/twitter/library/av/playback/aj;->a:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    invoke-interface {v0, v1}, Lcom/twitter/library/av/playback/ab;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 148
    return-void
.end method
