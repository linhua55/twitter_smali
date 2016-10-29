.class public abstract Lcom/twitter/model/core/f;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/core/e;",
        "B:",
        "Lcom/twitter/model/core/f",
        "<TE;TB;>;>",
        "Lcom/twitter/util/object/h",
        "<TE;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 77
    iput v0, p0, Lcom/twitter/model/core/f;->b:I

    .line 78
    iput v0, p0, Lcom/twitter/model/core/f;->c:I

    .line 79
    iput v0, p0, Lcom/twitter/model/core/f;->d:I

    .line 82
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/model/core/e;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 84
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 77
    iput v0, p0, Lcom/twitter/model/core/f;->b:I

    .line 78
    iput v0, p0, Lcom/twitter/model/core/f;->c:I

    .line 79
    iput v0, p0, Lcom/twitter/model/core/f;->d:I

    .line 85
    iget v0, p1, Lcom/twitter/model/core/e;->f:I

    iput v0, p0, Lcom/twitter/model/core/f;->b:I

    .line 86
    iget v0, p1, Lcom/twitter/model/core/e;->g:I

    iput v0, p0, Lcom/twitter/model/core/f;->c:I

    .line 87
    iget v0, p1, Lcom/twitter/model/core/e;->h:I

    iput v0, p0, Lcom/twitter/model/core/f;->d:I

    .line 88
    return-void
.end method


# virtual methods
.method protected L_()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/twitter/util/object/h;->L_()V

    .line 119
    iget v0, p0, Lcom/twitter/model/core/f;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 120
    iget v0, p0, Lcom/twitter/model/core/f;->c:I

    iput v0, p0, Lcom/twitter/model/core/f;->b:I

    .line 122
    :cond_0
    return-void
.end method

.method public a(I)Lcom/twitter/model/core/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 96
    iput p1, p0, Lcom/twitter/model/core/f;->c:I

    .line 97
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/f;

    return-object v0
.end method

.method public b(I)Lcom/twitter/model/core/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 106
    iput p1, p0, Lcom/twitter/model/core/f;->d:I

    .line 107
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/f;

    return-object v0
.end method

.method public c(I)Lcom/twitter/model/core/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 112
    iput p1, p0, Lcom/twitter/model/core/f;->b:I

    .line 113
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/f;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/twitter/model/core/f;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/twitter/model/core/f;->c:I

    return v0
.end method
