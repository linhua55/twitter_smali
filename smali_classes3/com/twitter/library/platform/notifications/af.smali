.class public final Lcom/twitter/library/platform/notifications/af;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/library/platform/notifications/ae;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/util/serialization/ae;-><init>(I)V

    .line 96
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/library/platform/notifications/ae;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Lcom/twitter/library/platform/notifications/ae;

    invoke-direct {v1}, Lcom/twitter/library/platform/notifications/ae;-><init>()V

    .line 134
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    iput v0, v1, Lcom/twitter/library/platform/notifications/ae;->b:I

    .line 135
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    iput v0, v1, Lcom/twitter/library/platform/notifications/ae;->d:I

    .line 136
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    iput v0, v1, Lcom/twitter/library/platform/notifications/ae;->c:I

    .line 137
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->e:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/library/platform/notifications/ae;->h:J

    .line 141
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/library/platform/notifications/ae;->i:J

    .line 142
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->j:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->k:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->l:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->m:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->n:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    iput-boolean v0, v1, Lcom/twitter/library/platform/notifications/ae;->o:Z

    .line 148
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    iput-boolean v0, v1, Lcom/twitter/library/platform/notifications/ae;->p:Z

    .line 149
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    iput v0, v1, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 150
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->A:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->q:Ljava/lang/String;

    .line 152
    sget-object v0, Lcsa;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsa;

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->x:Lcsa;

    .line 153
    sget-object v0, Lcsi;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsi;

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    .line 154
    sget-object v0, Lcrp;->b:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->z:Ljava/util/List;

    .line 155
    sget-object v0, Lcom/twitter/library/platform/notifications/i;->b:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    .line 156
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    iput v0, v1, Lcom/twitter/library/platform/notifications/ae;->s:I

    .line 157
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    .line 158
    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->u:Ljava/lang/String;

    .line 159
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->t:Ljava/lang/String;

    .line 162
    :cond_0
    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/platform/notifications/ae;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget v0, p2, Lcom/twitter/library/platform/notifications/ae;->b:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/library/platform/notifications/ae;->d:I

    .line 102
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/library/platform/notifications/ae;->c:I

    .line 103
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->e:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/library/platform/notifications/ae;->h:J

    .line 107
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/library/platform/notifications/ae;->i:J

    .line 108
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->j:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->k:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->l:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->m:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->n:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/library/platform/notifications/ae;->o:Z

    .line 114
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/library/platform/notifications/ae;->p:Z

    .line 115
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 116
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->A:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->q:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->x:Lcsa;

    sget-object v2, Lcsa;->a:Lcom/twitter/util/serialization/ah;

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->y:Lcsi;

    sget-object v2, Lcsi;->a:Lcom/twitter/util/serialization/ah;

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->z:Ljava/util/List;

    sget-object v2, Lcrp;->b:Lcom/twitter/util/serialization/ah;

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    sget-object v2, Lcom/twitter/library/platform/notifications/i;->b:Lcom/twitter/util/serialization/ah;

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/library/platform/notifications/ae;->s:I

    .line 123
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->u:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->t:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 126
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
    .line 93
    check-cast p2, Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/platform/notifications/af;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/platform/notifications/ae;)V

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
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/platform/notifications/af;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/library/platform/notifications/ae;

    move-result-object v0

    return-object v0
.end method
