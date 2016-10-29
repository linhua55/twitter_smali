.class Lcom/twitter/library/av/playback/v;
.super Lcom/twitter/library/av/playback/ca;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/av/playback/r;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/r;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/twitter/library/av/playback/v;->a:Lcom/twitter/library/av/playback/r;

    invoke-direct {p0}, Lcom/twitter/library/av/playback/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/twitter/library/av/playback/v;->a:Lcom/twitter/library/av/playback/r;

    iget-object v0, v0, Lcom/twitter/library/av/playback/r;->d:Lbvr;

    new-instance v1, Lbvy;

    iget-object v2, p0, Lcom/twitter/library/av/playback/v;->a:Lcom/twitter/library/av/playback/r;

    iget-object v2, v2, Lcom/twitter/library/av/playback/r;->f:Lcom/twitter/model/av/AVMedia;

    iget v3, p2, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    invoke-direct {v1, v2, v3}, Lbvy;-><init>(Lcom/twitter/model/av/AVMedia;I)V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    .line 231
    invoke-super/range {p0 .. p5}, Lcom/twitter/library/av/playback/ca;->onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;IJ)V

    .line 232
    return-void
.end method

.method public onLoadError(ILjava/io/IOException;)V
    .locals 3

    .prologue
    .line 225
    const-string/jumbo v0, "AVMediaExoPlayerHls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadError() called with: sourceId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], e = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onProgramDateTime(Ljava/util/Date;J)V
    .locals 4

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/av/playback/ca;->onProgramDateTime(Ljava/util/Date;J)V

    .line 237
    iget-object v0, p0, Lcom/twitter/library/av/playback/v;->a:Lcom/twitter/library/av/playback/r;

    iget-object v0, v0, Lcom/twitter/library/av/playback/r;->d:Lbvr;

    new-instance v1, Lcom/twitter/library/av/playback/y;

    iget-object v2, p0, Lcom/twitter/library/av/playback/v;->a:Lcom/twitter/library/av/playback/r;

    iget-object v2, v2, Lcom/twitter/library/av/playback/r;->f:Lcom/twitter/model/av/AVMedia;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/twitter/library/av/playback/y;-><init>(Lcom/twitter/model/av/AVMedia;Ljava/util/Date;J)V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    .line 238
    return-void
.end method
