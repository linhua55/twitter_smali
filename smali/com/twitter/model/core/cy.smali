.class public abstract Lcom/twitter/model/core/cy;
.super Lcom/twitter/model/core/f;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/core/cx;",
        "B:",
        "Lcom/twitter/model/core/cy",
        "<TE;TB;>;>",
        "Lcom/twitter/model/core/f",
        "<TE;TB;>;"
    }
.end annotation


# instance fields
.field A:I

.field B:I

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 84
    invoke-direct {p0}, Lcom/twitter/model/core/f;-><init>()V

    .line 81
    iput v0, p0, Lcom/twitter/model/core/cy;->A:I

    .line 82
    iput v0, p0, Lcom/twitter/model/core/cy;->B:I

    .line 85
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/model/core/cx;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 88
    invoke-direct {p0, p1}, Lcom/twitter/model/core/f;-><init>(Lcom/twitter/model/core/e;)V

    .line 81
    iput v0, p0, Lcom/twitter/model/core/cy;->A:I

    .line 82
    iput v0, p0, Lcom/twitter/model/core/cy;->B:I

    .line 89
    iget-object v0, p1, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cy;->x:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cy;->y:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cy;->z:Ljava/lang/String;

    .line 92
    iget v0, p1, Lcom/twitter/model/core/cx;->G:I

    iput v0, p0, Lcom/twitter/model/core/cy;->A:I

    .line 93
    iget v0, p1, Lcom/twitter/model/core/cx;->H:I

    iput v0, p0, Lcom/twitter/model/core/cy;->B:I

    .line 94
    return-void
.end method


# virtual methods
.method protected L_()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 133
    invoke-super {p0}, Lcom/twitter/model/core/f;->L_()V

    .line 136
    iget-object v0, p0, Lcom/twitter/model/core/cy;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/twitter/model/core/cy;->x:Ljava/lang/String;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/twitter/model/core/cy;->y:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/twitter/model/core/cy;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cy;->y:Ljava/lang/String;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/core/cy;->z:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/twitter/model/core/cy;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cy;->z:Ljava/lang/String;

    .line 145
    :cond_2
    iget v0, p0, Lcom/twitter/model/core/cy;->c:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/twitter/model/core/cy;->d:I

    if-ne v0, v1, :cond_3

    .line 147
    iget v0, p0, Lcom/twitter/model/core/cy;->c:I

    iget-object v1, p0, Lcom/twitter/model/core/cy;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/model/core/cy;->d:I

    .line 149
    :cond_3
    iget v0, p0, Lcom/twitter/model/core/cy;->B:I

    if-nez v0, :cond_4

    .line 151
    iget v0, p0, Lcom/twitter/model/core/cy;->A:I

    iget-object v1, p0, Lcom/twitter/model/core/cy;->z:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/model/core/cy;->B:I

    .line 153
    :cond_4
    return-void
.end method

.method public d(I)Lcom/twitter/model/core/cy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 121
    iput p1, p0, Lcom/twitter/model/core/cy;->A:I

    .line 122
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cy;

    return-object v0
.end method

.method public e(I)Lcom/twitter/model/core/cy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 127
    iput p1, p0, Lcom/twitter/model/core/cy;->B:I

    .line 128
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cy;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/twitter/model/core/cy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/twitter/model/core/cy;->x:Ljava/lang/String;

    .line 104
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cy;

    return-object v0
.end method

.method public bridge synthetic f()I
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/twitter/model/core/f;->f()I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/twitter/model/core/cy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lcom/twitter/model/core/cy;->y:Ljava/lang/String;

    .line 110
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cy;

    return-object v0
.end method

.method public bridge synthetic g()I
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/twitter/model/core/f;->g()I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Lcom/twitter/model/core/cy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/twitter/model/core/cy;->z:Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cy;

    return-object v0
.end method
