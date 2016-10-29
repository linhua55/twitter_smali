.class public Lcom/twitter/model/timeline/dc;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/db;",
        "Lcom/twitter/model/timeline/dc;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/timeline/dd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/dd;)Lcom/twitter/model/timeline/dc;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/twitter/model/timeline/dc;->a:Lcom/twitter/model/timeline/dd;

    .line 29
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/dc;->a:Lcom/twitter/model/timeline/dd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/twitter/model/timeline/dc;->e()Lcom/twitter/model/timeline/db;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/db;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/twitter/model/timeline/db;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/timeline/db;-><init>(Lcom/twitter/model/timeline/dc;I)V

    return-object v0
.end method
