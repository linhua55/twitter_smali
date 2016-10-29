.class Lcom/twitter/library/av/playback/cz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/model/av/c;

.field final synthetic b:Lcom/twitter/library/av/playback/ck;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/ck;Lcom/twitter/model/av/c;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/twitter/library/av/playback/cz;->b:Lcom/twitter/library/av/playback/ck;

    iput-object p2, p0, Lcom/twitter/library/av/playback/cz;->a:Lcom/twitter/model/av/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/av/playback/cz;->b:Lcom/twitter/library/av/playback/ck;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ck;->a()Lcom/twitter/library/av/s;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/av/playback/cz;->a:Lcom/twitter/model/av/c;

    invoke-interface {v0, v1}, Lcom/twitter/library/av/s;->a(Lcom/twitter/model/av/c;)V

    .line 99
    return-void
.end method
