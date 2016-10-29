.class Lcom/twitter/library/av/playback/cs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:D

.field final synthetic b:Lcom/twitter/library/av/playback/ck;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ck;D)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/twitter/library/av/playback/cs;->b:Lcom/twitter/library/av/playback/ck;

    iput-wide p2, p0, Lcom/twitter/library/av/playback/cs;->a:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/twitter/library/av/playback/cs;->b:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/library/av/playback/cs;->a:D

    invoke-interface {v0, v2, v3}, Lcom/twitter/library/av/s;->a(D)V

    .line 216
    return-void
.end method
