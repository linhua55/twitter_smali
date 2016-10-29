.class Lcsv;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcss;",
        "Lcsu;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcst;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcsv;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcsu;
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcsu;

    invoke-direct {v0}, Lcsu;-><init>()V

    return-object v0
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
    .line 252
    check-cast p2, Lcsu;

    invoke-virtual {p0, p1, p2, p3}, Lcsv;->a(Lcom/twitter/util/serialization/aj;Lcsu;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcsu;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcsu;->a(Ljava/lang/String;)Lcsu;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsu;->b(Ljava/lang/String;)Lcsu;

    move-result-object v0

    .line 281
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcsu;->a(J)Lcsu;

    move-result-object v0

    .line 282
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsu;->c(Ljava/lang/String;)Lcsu;

    move-result-object v0

    .line 283
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsu;->d(Ljava/lang/String;)Lcsu;

    move-result-object v0

    .line 284
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcsu;->a(Z)Lcsu;

    move-result-object v0

    .line 285
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcsu;->b(Z)Lcsu;

    move-result-object v1

    sget-object v0, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    .line 286
    invoke-static {p1, v0, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcsu;->a(Ljava/util/Map;)Lcsu;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcsu;->b(J)Lcsu;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcsu;->c(Z)Lcsu;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    .line 290
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->d(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsu;->a(Ljava/util/Set;)Lcsu;

    .line 291
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcss;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p2, Lcss;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcss;->d:Ljava/lang/String;

    .line 257
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcss;->e:J

    .line 258
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcss;->f:Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcss;->g:Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcss;->h:Z

    .line 261
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcss;->i:Z

    .line 262
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 263
    invoke-static {p2}, Lcss;->b(Lcss;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    .line 265
    iget-wide v0, p2, Lcss;->k:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcss;->j:Z

    .line 266
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 267
    iget-object v0, p2, Lcss;->l:Ljava/util/Set;

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V

    .line 268
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
    .line 252
    check-cast p2, Lcss;

    invoke-virtual {p0, p1, p2}, Lcsv;->a(Lcom/twitter/util/serialization/ak;Lcss;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcsv;->a()Lcsu;

    move-result-object v0

    return-object v0
.end method
