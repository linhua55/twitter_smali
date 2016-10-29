.class public Lcom/twitter/model/dms/bg;
.super Lcom/twitter/model/dms/c;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/c",
        "<",
        "Lcom/twitter/model/dms/bh;",
        "Lcom/twitter/model/dms/bd;",
        "Lcom/twitter/model/dms/bf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/twitter/model/dms/bh;->i:Lcom/twitter/util/serialization/ah;

    invoke-direct {p0, v0}, Lcom/twitter/model/dms/c;-><init>(Lcom/twitter/util/serialization/ah;)V

    .line 222
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/bf;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/twitter/model/dms/bf;

    invoke-direct {v0}, Lcom/twitter/model/dms/bf;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/twitter/model/dms/bg;->a()Lcom/twitter/model/dms/bf;

    move-result-object v0

    return-object v0
.end method
