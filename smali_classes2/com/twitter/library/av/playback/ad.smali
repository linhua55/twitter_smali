.class public Lcom/twitter/library/av/playback/ad;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/av/playback/ac;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/twitter/model/av/AVMedia;

.field public b:Lbvr;

.field public c:Landroid/content/Context;

.field public d:Lcom/twitter/library/av/playback/ab;

.field public e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/twitter/library/av/playback/ad;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/twitter/library/av/playback/ad;->c:Landroid/content/Context;

    .line 58
    return-object p0
.end method

.method public a(Landroid/os/Handler;)Lcom/twitter/library/av/playback/ad;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/library/av/playback/ad;->e:Landroid/os/Handler;

    .line 70
    return-object p0
.end method

.method public a(Lbvr;)Lcom/twitter/library/av/playback/ad;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/library/av/playback/ad;->b:Lbvr;

    .line 52
    return-object p0
.end method

.method public a(Lcom/twitter/library/av/playback/ab;)Lcom/twitter/library/av/playback/ad;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/library/av/playback/ad;->d:Lcom/twitter/library/av/playback/ab;

    .line 64
    return-object p0
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)Lcom/twitter/library/av/playback/ad;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/twitter/library/av/playback/ad;->a:Lcom/twitter/model/av/AVMedia;

    .line 46
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/library/av/playback/ad;->a:Lcom/twitter/model/av/AVMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/ad;->b:Lbvr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/ad;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/ad;->d:Lcom/twitter/library/av/playback/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/ad;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/ad;->e()Lcom/twitter/library/av/playback/ac;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/av/playback/ac;
    .locals 6

    .prologue
    .line 81
    new-instance v0, Lcom/twitter/library/av/playback/ac;

    iget-object v1, p0, Lcom/twitter/library/av/playback/ad;->a:Lcom/twitter/model/av/AVMedia;

    iget-object v2, p0, Lcom/twitter/library/av/playback/ad;->b:Lbvr;

    iget-object v3, p0, Lcom/twitter/library/av/playback/ad;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/twitter/library/av/playback/ad;->d:Lcom/twitter/library/av/playback/ab;

    iget-object v5, p0, Lcom/twitter/library/av/playback/ad;->e:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/av/playback/ac;-><init>(Lcom/twitter/model/av/AVMedia;Lbvr;Landroid/content/Context;Lcom/twitter/library/av/playback/ab;Landroid/os/Handler;)V

    return-object v0
.end method
