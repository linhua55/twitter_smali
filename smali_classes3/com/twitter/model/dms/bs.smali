.class public Lcom/twitter/model/dms/bs;
.super Lcom/twitter/model/dms/bq;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/bq",
        "<",
        "Lcom/twitter/model/dms/bo;",
        "Lcom/twitter/model/dms/bs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/twitter/model/dms/bq;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/dms/bo;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/bq;-><init>(Lcom/twitter/model/dms/bo;)V

    .line 113
    iget v0, p1, Lcom/twitter/model/dms/bo;->i:I

    iput v0, p0, Lcom/twitter/model/dms/bs;->f:I

    .line 114
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/bq;-><init>(Z)V

    .line 118
    return-void
.end method


# virtual methods
.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/twitter/model/dms/bs;->h()Lcom/twitter/model/dms/bo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lcom/twitter/model/dms/l;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/twitter/model/dms/bs;->h()Lcom/twitter/model/dms/bo;

    move-result-object v0

    return-object v0
.end method

.method synthetic f()Lcom/twitter/model/dms/l;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/twitter/model/dms/bs;->i()Lcom/twitter/model/dms/bo;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/dms/bo;
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/twitter/model/dms/bq;->h()Lcom/twitter/model/dms/bo;

    move-result-object v0

    .line 124
    iget-boolean v1, p0, Lcom/twitter/model/dms/bs;->d:Z

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/twitter/model/dms/bo;->B()Lcom/twitter/model/dms/bo;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method

.method i()Lcom/twitter/model/dms/bo;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/twitter/model/dms/bo;

    invoke-direct {v0, p0}, Lcom/twitter/model/dms/bo;-><init>(Lcom/twitter/model/dms/bq;)V

    return-object v0
.end method
