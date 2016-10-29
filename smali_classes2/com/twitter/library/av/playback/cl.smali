.class Lcom/twitter/library/av/playback/cl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/twitter/library/av/playback/ck;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ck;II)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/twitter/library/av/playback/cl;->c:Lcom/twitter/library/av/playback/ck;

    iput p2, p0, Lcom/twitter/library/av/playback/cl;->a:I

    iput p3, p0, Lcom/twitter/library/av/playback/cl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/library/av/playback/cl;->c:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    iget v1, p0, Lcom/twitter/library/av/playback/cl;->a:I

    iget v2, p0, Lcom/twitter/library/av/playback/cl;->b:I

    invoke-interface {v0, v1, v2}, Lcom/twitter/library/av/s;->a(II)V

    .line 48
    return-void
.end method
