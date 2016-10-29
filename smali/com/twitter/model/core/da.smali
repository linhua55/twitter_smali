.class public Lcom/twitter/model/core/da;
.super Lcom/twitter/model/core/cy;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/core/cy",
        "<",
        "Lcom/twitter/model/core/cx;",
        "Lcom/twitter/model/core/da;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/twitter/model/core/cy;-><init>()V

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/cx;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/twitter/model/core/cy;-><init>(Lcom/twitter/model/core/cx;)V

    .line 162
    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/twitter/model/core/da;->e()Lcom/twitter/model/core/cx;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/core/cx;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/twitter/model/core/cx;

    invoke-direct {v0, p0}, Lcom/twitter/model/core/cx;-><init>(Lcom/twitter/model/core/cy;)V

    return-object v0
.end method
