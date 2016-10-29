.class public Lcom/twitter/model/core/db;
.super Lcom/twitter/model/core/cz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/core/cz",
        "<",
        "Lcom/twitter/model/core/cx;",
        "Lcom/twitter/model/core/da;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/twitter/model/core/cz;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/core/da;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/twitter/model/core/da;

    invoke-direct {v0}, Lcom/twitter/model/core/da;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/twitter/model/core/db;->a()Lcom/twitter/model/core/da;

    move-result-object v0

    return-object v0
.end method
