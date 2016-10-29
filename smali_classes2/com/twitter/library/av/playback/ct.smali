.class Lcom/twitter/library/av/playback/ct;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/library/av/ab;

.field final synthetic b:Lcom/twitter/library/av/playback/ck;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ck;Lcom/twitter/library/av/ab;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/twitter/library/av/playback/ct;->b:Lcom/twitter/library/av/playback/ck;

    iput-object p2, p0, Lcom/twitter/library/av/playback/ct;->a:Lcom/twitter/library/av/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/twitter/library/av/playback/ct;->b:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/av/playback/ct;->a:Lcom/twitter/library/av/ab;

    invoke-interface {v0, v1}, Lcom/twitter/library/av/s;->a(Lcom/twitter/library/av/ab;)V

    .line 226
    return-void
.end method
