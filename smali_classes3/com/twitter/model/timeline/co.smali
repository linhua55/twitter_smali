.class public Lcom/twitter/model/timeline/co;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/cm;",
        "Lcom/twitter/model/timeline/co;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/timeline/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/b;)Lcom/twitter/model/timeline/co;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/twitter/model/timeline/co;->a:Lcom/twitter/model/timeline/b;

    .line 47
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/co;->a:Lcom/twitter/model/timeline/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/co;->a:Lcom/twitter/model/timeline/b;

    invoke-virtual {v0}, Lcom/twitter/model/timeline/b;->a()Z

    move-result v0

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
    .line 39
    invoke-virtual {p0}, Lcom/twitter/model/timeline/co;->e()Lcom/twitter/model/timeline/cm;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/cm;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/twitter/model/timeline/cm;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/model/timeline/cm;-><init>(Lcom/twitter/model/timeline/co;ILcom/twitter/model/timeline/cn;)V

    return-object v0
.end method
