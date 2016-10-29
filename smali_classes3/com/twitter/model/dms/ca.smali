.class public Lcom/twitter/model/dms/ca;
.super Lcom/twitter/model/dms/ar;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/ar",
        "<",
        "Lcom/twitter/model/dms/bx;",
        "Lcom/twitter/model/dms/bz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/model/dms/ar;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/bz;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/twitter/model/dms/bz;

    invoke-direct {v0}, Lcom/twitter/model/dms/bz;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/twitter/model/dms/ca;->a()Lcom/twitter/model/dms/bz;

    move-result-object v0

    return-object v0
.end method
