.class Lcom/twitter/library/av/playback/dc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/library/av/playback/ck;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ck;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/twitter/library/av/playback/dc;->a:Lcom/twitter/library/av/playback/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/library/av/playback/dc;->a:Lcom/twitter/library/av/playback/ck;

    iget-boolean v0, v0, Lcom/twitter/library/av/playback/ck;->d:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/twitter/library/av/playback/dc;->a:Lcom/twitter/library/av/playback/ck;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twitter/library/av/playback/ck;->d:Z

    .line 134
    iget-object v0, p0, Lcom/twitter/library/av/playback/dc;->a:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/s;->i()V

    .line 136
    :cond_0
    return-void
.end method
