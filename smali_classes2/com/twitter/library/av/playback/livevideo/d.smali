.class public Lcom/twitter/library/av/playback/livevideo/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbvk;


# instance fields
.field private final b:Lcom/twitter/model/livevideo/d;

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/twitter/model/livevideo/d;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/twitter/library/av/playback/livevideo/d;->b:Lcom/twitter/model/livevideo/d;

    .line 23
    const-string/jumbo v0, "live_video_use_live_stream_acquisition_android_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/av/playback/livevideo/d;->c:Z

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/d;->b:Lcom/twitter/model/livevideo/d;

    iget-object v0, v0, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/d;->b:Lcom/twitter/model/livevideo/d;

    iget-object v0, v0, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    iget-wide v0, v0, Lcom/twitter/model/livevideo/a;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/library/av/playback/livevideo/d;->c:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {p1}, Lcom/twitter/model/av/AVMedia;->a()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/d;->b:Lcom/twitter/model/livevideo/d;

    iget-object v0, v0, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/d;->b:Lcom/twitter/model/livevideo/d;

    iget-object v0, v0, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    iget-object v0, v0, Lcom/twitter/model/livevideo/a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/d;->b:Lcom/twitter/model/livevideo/d;

    iget-wide v0, v0, Lcom/twitter/model/livevideo/d;->c:J

    return-wide v0
.end method
