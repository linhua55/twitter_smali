.class Lcom/twitter/library/av/playback/cg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbvk;


# instance fields
.field final synthetic b:Lcom/twitter/library/av/playback/cf;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/cf;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/twitter/library/av/playback/cg;->b:Lcom/twitter/library/av/playback/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/library/av/playback/cg;->b:Lcom/twitter/library/av/playback/cf;

    invoke-static {v0}, Lcom/twitter/library/av/playback/cf;->a(Lcom/twitter/library/av/playback/cf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/twitter/library/av/playback/cg;->b:Lcom/twitter/library/av/playback/cf;

    invoke-static {v0}, Lcom/twitter/library/av/playback/cf;->a(Lcom/twitter/library/av/playback/cf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/library/av/playback/cg;->b:Lcom/twitter/library/av/playback/cf;

    iget-object v0, v0, Lcom/twitter/library/av/playback/cf;->a:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->u(Lcom/twitter/model/core/Tweet;)J

    move-result-wide v0

    return-wide v0
.end method
