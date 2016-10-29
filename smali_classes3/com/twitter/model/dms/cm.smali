.class public Lcom/twitter/model/dms/cm;
.super Lcom/twitter/model/dms/k;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/k",
        "<",
        "Lcom/twitter/model/dms/cj;",
        "Lcom/twitter/model/dms/cl;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/twitter/model/dms/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/cl;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/twitter/model/dms/cl;

    invoke-direct {v0}, Lcom/twitter/model/dms/cl;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/twitter/model/dms/cm;->a()Lcom/twitter/model/dms/cl;

    move-result-object v0

    return-object v0
.end method
