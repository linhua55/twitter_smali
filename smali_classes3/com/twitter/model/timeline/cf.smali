.class public Lcom/twitter/model/timeline/cf;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/cd;",
        "Lcom/twitter/model/timeline/cf;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/core/cs;

.field m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method


# virtual methods
.method public L_()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/model/timeline/cf;->a:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/cf;->h:Lcom/twitter/model/core/TwitterSocialProof;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/twitter/model/timeline/cf;->a:Lcom/twitter/model/core/cs;

    iget-object v0, v0, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    if-nez v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/twitter/model/timeline/cf;->a:Lcom/twitter/model/core/cs;

    new-instance v0, Lcom/twitter/model/search/n;

    invoke-direct {v0}, Lcom/twitter/model/search/n;-><init>()V

    iget-object v2, p0, Lcom/twitter/model/timeline/cf;->h:Lcom/twitter/model/core/TwitterSocialProof;

    .line 90
    invoke-virtual {v0, v2}, Lcom/twitter/model/search/n;->a(Lcom/twitter/model/core/TwitterSocialProof;)Lcom/twitter/model/search/n;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/twitter/model/search/n;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/search/m;

    iput-object v0, v1, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/timeline/cf;->a:Lcom/twitter/model/core/cs;

    iget-object v0, v0, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    iget-object v1, p0, Lcom/twitter/model/timeline/cf;->h:Lcom/twitter/model/core/TwitterSocialProof;

    iput-object v1, v0, Lcom/twitter/model/search/m;->f:Lcom/twitter/model/core/TwitterSocialProof;

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/twitter/model/timeline/cf;->a:Lcom/twitter/model/core/cs;

    .line 71
    return-object p0
.end method

.method public bq_()Z
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/cf;->a:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Moments"

    iget-object v1, p0, Lcom/twitter/model/timeline/cf;->j:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/cf;->i:Lcom/twitter/model/moments/bg;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/timeline/cf;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/twitter/model/timeline/cf;->m:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/twitter/model/timeline/cf;->f()Lcom/twitter/model/timeline/cd;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/core/cs;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/model/timeline/cf;->a:Lcom/twitter/model/core/cs;

    return-object v0
.end method

.method public f()Lcom/twitter/model/timeline/cd;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lcom/twitter/model/timeline/cd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/model/timeline/cd;-><init>(Lcom/twitter/model/timeline/cf;ILcom/twitter/model/timeline/ce;)V

    return-object v0
.end method
