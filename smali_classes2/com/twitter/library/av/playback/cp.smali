.class Lcom/twitter/library/av/playback/cp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/twitter/library/av/playback/ck;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ck;Z)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/twitter/library/av/playback/cp;->b:Lcom/twitter/library/av/playback/ck;

    iput-boolean p2, p0, Lcom/twitter/library/av/playback/cp;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/twitter/library/av/playback/cp;->b:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/library/av/playback/cp;->a:Z

    invoke-interface {v0, v1}, Lcom/twitter/library/av/s;->a(Z)V

    .line 176
    return-void
.end method
