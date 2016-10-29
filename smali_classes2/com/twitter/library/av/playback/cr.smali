.class Lcom/twitter/library/av/playback/cr;
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
    .line 202
    iput-object p1, p0, Lcom/twitter/library/av/playback/cr;->a:Lcom/twitter/library/av/playback/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/library/av/playback/cr;->a:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/s;->l()V

    .line 206
    return-void
.end method
