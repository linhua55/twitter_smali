.class public Lcom/twitter/library/av/playback/bv;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/av/playback/DMAVDataSource;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/dms/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/dms/l;)Lcom/twitter/library/av/playback/bv;
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/twitter/library/av/playback/bv;->a:Lcom/twitter/model/dms/l;

    .line 251
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/twitter/library/av/playback/bv;->a:Lcom/twitter/model/dms/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/bv;->a:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->z()Z

    move-result v0

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
    .line 246
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bv;->e()Lcom/twitter/library/av/playback/DMAVDataSource;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/av/playback/DMAVDataSource;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/twitter/library/av/playback/DMAVDataSource;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/DMAVDataSource;-><init>(Lcom/twitter/library/av/playback/bv;)V

    return-object v0
.end method
