.class public Lcom/twitter/model/dms/bf;
.super Lcom/twitter/model/dms/m;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/m",
        "<",
        "Lcom/twitter/model/dms/bd;",
        "Lcom/twitter/model/dms/bf;",
        "Lcom/twitter/model/dms/bh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/twitter/model/dms/m;-><init>()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/dms/bd;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/m;-><init>(Lcom/twitter/model/dms/l;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected L_()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/twitter/model/dms/m;->L_()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/model/dms/bf;->a:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/model/dms/bf;->b:Z

    .line 115
    return-void
.end method

.method synthetic f()Lcom/twitter/model/dms/l;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/twitter/model/dms/bf;->h()Lcom/twitter/model/dms/bd;

    move-result-object v0

    return-object v0
.end method

.method h()Lcom/twitter/model/dms/bd;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/twitter/model/dms/bd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/bd;-><init>(Lcom/twitter/model/dms/bf;Lcom/twitter/model/dms/be;)V

    return-object v0
.end method
