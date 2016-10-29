.class Lcom/twitter/library/av/playback/bg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/twitter/library/av/playback/bf;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/bf;II)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/twitter/library/av/playback/bg;->c:Lcom/twitter/library/av/playback/bf;

    iput p2, p0, Lcom/twitter/library/av/playback/bg;->a:I

    iput p3, p0, Lcom/twitter/library/av/playback/bg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/library/av/playback/bg;->c:Lcom/twitter/library/av/playback/bf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/bf;->a:Lcom/twitter/library/av/playback/AVPlayer;

    iget v1, p0, Lcom/twitter/library/av/playback/bg;->a:I

    iget v2, p0, Lcom/twitter/library/av/playback/bg;->b:I

    invoke-static {v1, v2}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/av/playback/AVPlayer;->f:Lcom/twitter/util/math/Size;

    .line 48
    iget-object v0, p0, Lcom/twitter/library/av/playback/bg;->c:Lcom/twitter/library/av/playback/bf;

    iget v1, p0, Lcom/twitter/library/av/playback/bg;->a:I

    iget v2, p0, Lcom/twitter/library/av/playback/bg;->b:I

    invoke-static {v0, v1, v2}, Lcom/twitter/library/av/playback/bf;->a(Lcom/twitter/library/av/playback/bf;II)V

    .line 49
    return-void
.end method
