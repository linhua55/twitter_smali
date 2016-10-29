.class abstract Lcom/twitter/model/dms/bq;
.super Lcom/twitter/model/dms/m;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/bo;",
        "B:",
        "Lcom/twitter/model/dms/bq",
        "<TE;TB;>;>",
        "Lcom/twitter/model/dms/m",
        "<TE;TB;",
        "Lcom/twitter/model/dms/bu;",
        ">;"
    }
.end annotation


# instance fields
.field protected e:Z

.field protected f:I

.field protected final g:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/model/dms/bq;-><init>(Z)V

    .line 145
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/model/dms/bo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/m;-><init>(Lcom/twitter/model/dms/l;)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/model/dms/bq;->g:Z

    .line 154
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/twitter/model/dms/m;-><init>()V

    .line 148
    iput-boolean p1, p0, Lcom/twitter/model/dms/bq;->g:Z

    .line 149
    return-void
.end method


# virtual methods
.method public b(Z)Lcom/twitter/model/dms/bq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/twitter/model/dms/bq;->e:Z

    .line 159
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bq;

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/twitter/model/dms/bq;->h()Lcom/twitter/model/dms/bo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lcom/twitter/model/dms/l;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/twitter/model/dms/bq;->h()Lcom/twitter/model/dms/bo;

    move-result-object v0

    return-object v0
.end method

.method synthetic f()Lcom/twitter/model/dms/l;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/twitter/model/dms/bq;->i()Lcom/twitter/model/dms/bo;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/dms/bo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/twitter/model/dms/bq;->e:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    :goto_0
    iput v0, p0, Lcom/twitter/model/dms/bq;->f:I

    .line 171
    iget-boolean v0, p0, Lcom/twitter/model/dms/bq;->g:Z

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/twitter/model/dms/bq;->i()Lcom/twitter/model/dms/bo;

    move-result-object v0

    .line 175
    :goto_1
    return-object v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_1
    invoke-super {p0}, Lcom/twitter/model/dms/m;->e()Lcom/twitter/model/dms/l;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bo;

    goto :goto_1
.end method

.method abstract i()Lcom/twitter/model/dms/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method
