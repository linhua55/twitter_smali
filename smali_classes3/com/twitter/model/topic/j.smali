.class public Lcom/twitter/model/topic/j;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/topic/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/util/serialization/ae;-><init>(I)V

    .line 95
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/topic/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v1, Lcom/twitter/model/topic/i;

    invoke-direct {v1}, Lcom/twitter/model/topic/i;-><init>()V

    .line 117
    sget-object v0, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/topic/i;->f:Ljava/util/List;

    .line 118
    sget-object v0, Lcom/twitter/model/topic/trends/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/trends/a;

    iput-object v0, v1, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    .line 119
    sget-object v0, Lcom/twitter/model/topic/trends/n;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/trends/n;

    iput-object v0, v1, Lcom/twitter/model/topic/i;->d:Lcom/twitter/model/topic/trends/n;

    .line 120
    sget-object v0, Lcom/twitter/model/topic/trends/h;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/trends/h;

    iput-object v0, v1, Lcom/twitter/model/topic/i;->e:Lcom/twitter/model/topic/trends/h;

    .line 121
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    iput v0, v1, Lcom/twitter/model/topic/i;->g:I

    .line 122
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/topic/i;->h:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    iput v0, v1, Lcom/twitter/model/topic/i;->i:I

    .line 124
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    iput-boolean v0, v1, Lcom/twitter/model/topic/i;->j:Z

    .line 125
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    iput v0, v1, Lcom/twitter/model/topic/i;->k:I

    .line 128
    :cond_0
    sget-object v0, Lcom/twitter/model/topic/trends/TrendBadge;->b:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/topic/i;->l:Ljava/util/List;

    .line 129
    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/topic/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p2, Lcom/twitter/model/topic/i;->f:Ljava/util/List;

    sget-object v1, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 101
    iget-object v0, p2, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    sget-object v1, Lcom/twitter/model/topic/trends/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/topic/i;->d:Lcom/twitter/model/topic/trends/n;

    sget-object v2, Lcom/twitter/model/topic/trends/n;->a:Lcom/twitter/util/serialization/ah;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/topic/i;->e:Lcom/twitter/model/topic/trends/h;

    sget-object v2, Lcom/twitter/model/topic/trends/h;->a:Lcom/twitter/util/serialization/ah;

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/topic/i;->g:I

    .line 104
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/topic/i;->h:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/topic/i;->i:I

    .line 106
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/topic/i;->j:Z

    .line 107
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/topic/i;->k:I

    .line 108
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 109
    iget-object v0, p2, Lcom/twitter/model/topic/i;->l:Ljava/util/List;

    sget-object v1, Lcom/twitter/model/topic/trends/TrendBadge;->b:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 110
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    check-cast p2, Lcom/twitter/model/topic/i;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/topic/j;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/topic/i;)V

    return-void
.end method

.method protected synthetic b(Lcom/twitter/util/serialization/aj;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/topic/j;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/topic/i;

    move-result-object v0

    return-object v0
.end method
