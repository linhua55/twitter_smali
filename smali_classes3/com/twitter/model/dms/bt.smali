.class public Lcom/twitter/model/dms/bt;
.super Lcom/twitter/model/dms/br;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/br",
        "<",
        "Lcom/twitter/model/dms/bo;",
        "Lcom/twitter/model/dms/bs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/twitter/model/dms/bu;->i:Lcom/twitter/util/serialization/ah;

    invoke-direct {p0, v0}, Lcom/twitter/model/dms/br;-><init>(Lcom/twitter/util/serialization/ah;)V

    .line 217
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/twitter/model/dms/bq;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/twitter/model/dms/bt;->c()Lcom/twitter/model/dms/bs;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/twitter/model/dms/bt;->c()Lcom/twitter/model/dms/bs;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/twitter/model/dms/bs;
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/twitter/model/dms/bs;

    invoke-direct {v0}, Lcom/twitter/model/dms/bs;-><init>()V

    return-object v0
.end method
