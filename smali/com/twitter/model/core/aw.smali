.class public Lcom/twitter/model/core/aw;
.super Lcom/twitter/model/core/f;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/core/f",
        "<",
        "Lcom/twitter/model/core/av;",
        "Lcom/twitter/model/core/aw;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/twitter/model/core/f;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/av;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/twitter/model/core/f;-><init>(Lcom/twitter/model/core/e;)V

    .line 67
    iget-wide v0, p1, Lcom/twitter/model/core/av;->c:J

    iput-wide v0, p0, Lcom/twitter/model/core/aw;->a:J

    .line 68
    iget-object v0, p1, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/aw;->e:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/twitter/model/core/av;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/aw;->f:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method protected L_()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 92
    invoke-super {p0}, Lcom/twitter/model/core/f;->L_()V

    .line 93
    iget v0, p0, Lcom/twitter/model/core/aw;->c:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/model/core/aw;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/aw;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/twitter/model/core/aw;->c:I

    iget-object v1, p0, Lcom/twitter/model/core/aw;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/model/core/aw;->d:I

    .line 97
    :cond_0
    return-void
.end method

.method public a(J)Lcom/twitter/model/core/aw;
    .locals 1

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/twitter/model/core/aw;->a:J

    .line 75
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/core/aw;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/twitter/model/core/aw;->e:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/core/aw;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/twitter/model/core/aw;->f:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/twitter/model/core/aw;->e()Lcom/twitter/model/core/av;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/core/av;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/twitter/model/core/av;

    invoke-direct {v0, p0}, Lcom/twitter/model/core/av;-><init>(Lcom/twitter/model/core/aw;)V

    return-object v0
.end method

.method public bridge synthetic f()I
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/twitter/model/core/f;->f()I

    move-result v0

    return v0
.end method

.method public bridge synthetic g()I
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/twitter/model/core/f;->g()I

    move-result v0

    return v0
.end method
