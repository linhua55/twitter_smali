.class Lcom/twitter/library/av/playback/co;
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
    .line 162
    iput-object p1, p0, Lcom/twitter/library/av/playback/co;->a:Lcom/twitter/library/av/playback/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/library/av/playback/co;->a:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/av/s;->k()V

    .line 166
    return-void
.end method
