.class public Lcom/twitter/model/timeline/as;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/aq;",
        "Lcom/twitter/model/timeline/as;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lctd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lctd;)Lcom/twitter/model/timeline/as;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/twitter/model/timeline/as;->a:Lctd;

    .line 26
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/as;->a:Lctd;

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
    .line 18
    invoke-virtual {p0}, Lcom/twitter/model/timeline/as;->e()Lcom/twitter/model/timeline/aq;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/aq;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/twitter/model/timeline/aq;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/model/timeline/aq;-><init>(Lcom/twitter/model/timeline/as;ILcom/twitter/model/timeline/ar;)V

    return-object v0
.end method
