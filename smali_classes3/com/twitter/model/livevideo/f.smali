.class public Lcom/twitter/model/livevideo/f;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/livevideo/d;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/livevideo/d;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v4

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v6

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v8

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v10

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v12

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v13

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v14

    .line 220
    sget-object v2, Lcom/twitter/model/livevideo/a;->a:Lcom/twitter/util/serialization/ah;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/livevideo/a;

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v15

    .line 222
    sget-object v3, Lcom/twitter/model/card/property/ImageSpec;->a:Lcom/twitter/util/serialization/ah;

    .line 223
    invoke-static {v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 224
    new-instance v16, Lcom/twitter/model/livevideo/e;

    invoke-direct/range {v16 .. v16}, Lcom/twitter/model/livevideo/e;-><init>()V

    .line 225
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/twitter/model/livevideo/e;->a(J)Lcom/twitter/model/livevideo/e;

    move-result-object v4

    .line 226
    invoke-virtual {v4, v6, v7}, Lcom/twitter/model/livevideo/e;->b(J)Lcom/twitter/model/livevideo/e;

    move-result-object v4

    .line 227
    invoke-virtual {v4, v8, v9}, Lcom/twitter/model/livevideo/e;->c(J)Lcom/twitter/model/livevideo/e;

    move-result-object v4

    .line 228
    invoke-virtual {v4, v10, v11}, Lcom/twitter/model/livevideo/e;->d(J)Lcom/twitter/model/livevideo/e;

    move-result-object v4

    .line 229
    invoke-virtual {v4, v12}, Lcom/twitter/model/livevideo/e;->b(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v4

    .line 230
    invoke-virtual {v4, v13}, Lcom/twitter/model/livevideo/e;->c(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v4

    .line 231
    invoke-virtual {v4, v14}, Lcom/twitter/model/livevideo/e;->a(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v4

    .line 232
    invoke-virtual {v4, v2}, Lcom/twitter/model/livevideo/e;->a(Lcom/twitter/model/livevideo/a;)Lcom/twitter/model/livevideo/e;

    move-result-object v2

    .line 233
    invoke-virtual {v2, v15}, Lcom/twitter/model/livevideo/e;->d(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v2

    .line 234
    invoke-static {v3}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/model/livevideo/e;->a(Ljava/util/List;)Lcom/twitter/model/livevideo/e;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lcom/twitter/model/livevideo/e;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/livevideo/d;

    .line 224
    return-object v2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/livevideo/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-wide v0, p2, Lcom/twitter/model/livevideo/d;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/livevideo/d;->c:J

    .line 197
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/livevideo/d;->d:J

    .line 198
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/livevideo/d;->e:J

    .line 199
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/livevideo/d;->f:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/livevideo/d;->g:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/livevideo/d;->h:Ljava/lang/String;

    .line 202
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    sget-object v2, Lcom/twitter/model/livevideo/a;->a:Lcom/twitter/util/serialization/ah;

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/livevideo/d;->j:Ljava/lang/String;

    .line 204
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/livevideo/d;->k:Ljava/util/List;

    sget-object v2, Lcom/twitter/model/card/property/ImageSpec;->a:Lcom/twitter/util/serialization/ah;

    .line 206
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 207
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
    .line 192
    check-cast p2, Lcom/twitter/model/livevideo/d;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/livevideo/f;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/livevideo/d;)V

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
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/livevideo/f;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/livevideo/d;

    move-result-object v0

    return-object v0
.end method
