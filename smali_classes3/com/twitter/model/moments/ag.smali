.class Lcom/twitter/model/moments/ag;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/moments/ad;",
        "Lcom/twitter/model/moments/af;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/util/serialization/d;-><init>(I)V

    .line 72
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/moments/af;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/twitter/model/moments/af;

    invoke-direct {v0}, Lcom/twitter/model/moments/af;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/af;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/moments/af;->a(J)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->d(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->e(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->b(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->c(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->b(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->c(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->d(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->f(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(I)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->g(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/a;->a:Lcom/twitter/util/serialization/ah;

    .line 118
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/a;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/af;->a(Lcom/twitter/model/moments/a;)Lcom/twitter/model/moments/af;

    move-result-object v1

    sget-object v0, Lcss;->a:Lcom/twitter/util/serialization/d;

    .line 119
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/af;->a(Lcss;)Lcom/twitter/model/moments/af;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/o;->a:Lcom/twitter/util/serialization/ah;

    .line 120
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/o;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/af;->a(Lcom/twitter/model/moments/o;)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/af;->b(J)Lcom/twitter/model/moments/af;

    .line 122
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->o()B

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 128
    invoke-static {p1}, Lcom/twitter/util/serialization/ag;->b(Lcom/twitter/util/serialization/aj;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/object/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    check-cast p2, Lcom/twitter/model/moments/af;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/moments/ag;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/af;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/ad;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-wide v0, p2, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ad;->i:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ad;->j:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/moments/ad;->d:Z

    .line 81
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/moments/ad;->e:Z

    .line 82
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/moments/ad;->f:Z

    .line 83
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ad;->g:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ad;->h:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/moments/ad;->k:Z

    .line 86
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/moments/ad;->m:I

    .line 88
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ad;->n:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ad;->o:Lcom/twitter/model/moments/a;

    sget-object v2, Lcom/twitter/model/moments/a;->a:Lcom/twitter/util/serialization/ah;

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ad;->p:Lcss;

    sget-object v2, Lcss;->a:Lcom/twitter/util/serialization/d;

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ad;->q:Lcom/twitter/model/moments/o;

    sget-object v2, Lcom/twitter/model/moments/o;->a:Lcom/twitter/util/serialization/ah;

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/moments/ad;->r:J

    .line 93
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    .line 94
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
    .line 68
    check-cast p2, Lcom/twitter/model/moments/ad;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/ag;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/ad;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/twitter/model/moments/ag;->a()Lcom/twitter/model/moments/af;

    move-result-object v0

    return-object v0
.end method
