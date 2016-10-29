.class Lcom/twitter/model/core/ba;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/ay;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/az;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/twitter/model/core/ba;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/ay;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v1, Lcom/twitter/model/core/ay;

    invoke-direct {v1}, Lcom/twitter/model/core/ay;-><init>()V

    .line 212
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/model/core/ay;->b:J

    .line 213
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/model/core/ay;->e:J

    .line 216
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/core/ay;->f:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/core/ay;->g:Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/d;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    .line 219
    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, v1, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    .line 220
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/model/core/ay;->i:J

    .line 221
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/core/ay;->j:Ljava/lang/String;

    .line 222
    sget-object v0, Lclw;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclw;

    iput-object v0, v1, Lcom/twitter/model/core/ay;->k:Lclw;

    .line 223
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    iput-boolean v0, v1, Lcom/twitter/model/core/ay;->l:Z

    .line 224
    sget-object v0, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/d;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    iput-object v0, v1, Lcom/twitter/model/core/ay;->m:Lcss;

    .line 225
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    iput-boolean v0, v1, Lcom/twitter/model/core/ay;->n:Z

    .line 227
    :try_start_0
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    iput-boolean v0, v1, Lcom/twitter/model/core/ay;->o:Z
    :try_end_0
    .catch Lcom/twitter/util/serialization/OptionalFieldException; {:try_start_0 .. :try_end_0} :catch_5

    .line 231
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/core/ay;->p:Ljava/lang/String;
    :try_end_1
    .catch Lcom/twitter/util/serialization/OptionalFieldException; {:try_start_1 .. :try_end_1} :catch_4

    .line 235
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/model/core/ay;->q:J
    :try_end_2
    .catch Lcom/twitter/util/serialization/OptionalFieldException; {:try_start_2 .. :try_end_2} :catch_3

    .line 239
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/model/core/ay;->r:J
    :try_end_3
    .catch Lcom/twitter/util/serialization/OptionalFieldException; {:try_start_3 .. :try_end_3} :catch_2

    .line 243
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    iput-boolean v0, v1, Lcom/twitter/model/core/ay;->s:Z
    :try_end_4
    .catch Lcom/twitter/util/serialization/OptionalFieldException; {:try_start_4 .. :try_end_4} :catch_1

    .line 247
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    iput-boolean v0, v1, Lcom/twitter/model/core/ay;->t:Z
    :try_end_5
    .catch Lcom/twitter/util/serialization/OptionalFieldException; {:try_start_5 .. :try_end_5} :catch_0

    .line 250
    :goto_6
    return-object v1

    .line 219
    :cond_0
    sget-object v0, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    goto :goto_6

    .line 244
    :catch_1
    move-exception v0

    goto :goto_5

    .line 240
    :catch_2
    move-exception v0

    goto :goto_4

    .line 236
    :catch_3
    move-exception v0

    goto :goto_3

    .line 232
    :catch_4
    move-exception v0

    goto :goto_2

    .line 228
    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/ay;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-wide v0, p2, Lcom/twitter/model/core/ay;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/ay;->c:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/ay;->d:Ljava/lang/String;

    .line 188
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/core/ay;->e:J

    .line 189
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/ay;->f:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/ay;->g:Ljava/lang/String;

    .line 191
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/ay;->h:Lcom/twitter/model/core/bm;

    sget-object v2, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/core/ay;->i:J

    .line 193
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/ay;->j:Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/ay;->k:Lclw;

    sget-object v2, Lclw;->a:Lcom/twitter/util/serialization/ah;

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/core/ay;->l:Z

    .line 196
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/ay;->m:Lcss;

    sget-object v2, Lcss;->a:Lcom/twitter/util/serialization/d;

    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/core/ay;->n:Z

    .line 198
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/core/ay;->o:Z

    .line 199
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/ay;->p:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/core/ay;->q:J

    .line 201
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/core/ay;->r:J

    .line 202
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/core/ay;->s:Z

    .line 203
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/core/ay;->t:Z

    .line 204
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 205
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
    .line 182
    check-cast p2, Lcom/twitter/model/core/ay;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ba;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/ay;)V

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
    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ba;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/ay;

    move-result-object v0

    return-object v0
.end method
