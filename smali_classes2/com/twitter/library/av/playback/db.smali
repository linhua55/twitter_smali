.class Lcom/twitter/library/av/playback/db;
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
    .line 115
    iput-object p1, p0, Lcom/twitter/library/av/playback/db;->a:Lcom/twitter/library/av/playback/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/library/av/playback/db;->a:Lcom/twitter/library/av/playback/ck;

    iget-boolean v0, v0, Lcom/twitter/library/av/playback/ck;->d:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/twitter/library/av/playback/db;->a:Lcom/twitter/library/av/playback/ck;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/library/av/playback/ck;->d:Z

    .line 121
    iget-object v0, p0, Lcom/twitter/library/av/playback/db;->a:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/s;->h()V

    .line 123
    :cond_0
    return-void
.end method
