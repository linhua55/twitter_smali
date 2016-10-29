.class public Lcom/twitter/model/core/ab;
.super Lcom/twitter/model/core/cz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/core/cz",
        "<",
        "Lcom/twitter/model/core/MediaEntity;",
        "Lcom/twitter/model/core/aa;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/twitter/model/core/cz;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/core/aa;
    .locals 1

    .prologue
    .line 346
    new-instance v0, Lcom/twitter/model/core/aa;

    invoke-direct {v0}, Lcom/twitter/model/core/aa;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/aa;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/model/core/cz;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/cy;I)V

    .line 353
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/core/aa;->a(J)Lcom/twitter/model/core/aa;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->a(Ljava/lang/String;)Lcom/twitter/model/core/aa;

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-static {v1}, Lcom/twitter/model/core/MediaEntity$Type;->a(I)Lcom/twitter/model/core/MediaEntity$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/MediaEntity$Type;)Lcom/twitter/model/core/aa;

    move-result-object v1

    sget-object v0, Lcom/twitter/util/math/Size;->a:Lcom/twitter/util/serialization/ah;

    .line 356
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/math/Size;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/core/aa;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/aa;->b(J)Lcom/twitter/model/core/aa;

    move-result-object v0

    .line 358
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/aa;->c(J)Lcom/twitter/model/core/aa;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/bs;->a:Lcom/twitter/util/serialization/ah;

    .line 359
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->a(Ljava/util/List;)Lcom/twitter/model/core/aa;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/am;->a:Lcom/twitter/util/serialization/ah;

    .line 360
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->b(Ljava/util/List;)Lcom/twitter/model/core/aa;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/ap;->a:Lcom/twitter/util/serialization/ah;

    .line 361
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ap;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/ap;)Lcom/twitter/model/core/aa;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/av/VideoCta;->a:Lcom/twitter/util/serialization/ah;

    .line 362
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/VideoCta;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/av/VideoCta;)Lcom/twitter/model/core/aa;

    move-result-object v0

    .line 363
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->b(Ljava/lang/String;)Lcom/twitter/model/core/aa;

    move-result-object v0

    .line 364
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->a(Z)Lcom/twitter/model/core/aa;

    move-result-object v0

    .line 365
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->c(Ljava/lang/String;)Lcom/twitter/model/core/aa;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/TwitterUser;->a:Lcom/twitter/util/serialization/d;

    .line 366
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/d;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/aa;

    move-result-object v0

    .line 367
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->b(Z)Lcom/twitter/model/core/aa;

    move-result-object v0

    sget-object v1, Lcpb;->a:Lcom/twitter/util/serialization/ah;

    .line 368
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->c(Ljava/util/List;)Lcom/twitter/model/core/aa;

    move-result-object v0

    .line 369
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->d(Ljava/lang/String;)Lcom/twitter/model/core/aa;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/ag;->a:Lcom/twitter/util/serialization/ah;

    .line 370
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ag;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/ag;)Lcom/twitter/model/core/aa;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/aj;->a:Lcom/twitter/util/serialization/ah;

    .line 371
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/aj;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/aa;->a(Lcom/twitter/model/core/aj;)Lcom/twitter/model/core/aa;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/media/a;->a:Lcom/twitter/util/serialization/ah;

    .line 372
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aa;->d(Ljava/util/List;)Lcom/twitter/model/core/aa;

    .line 373
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/cy;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 316
    check-cast p2, Lcom/twitter/model/core/aa;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/ab;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/aa;I)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/f;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 316
    check-cast p2, Lcom/twitter/model/core/aa;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/ab;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/aa;I)V

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
    .line 316
    check-cast p2, Lcom/twitter/model/core/aa;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/ab;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/aa;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/MediaEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-super {p0, p1, p2}, Lcom/twitter/model/core/cz;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/cx;)V

    .line 321
    iget-wide v0, p2, Lcom/twitter/model/core/MediaEntity;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    .line 322
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/MediaEntity;->m:Lcom/twitter/model/core/MediaEntity$Type;

    iget v1, v1, Lcom/twitter/model/core/MediaEntity$Type;->typeId:I

    .line 323
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    sget-object v2, Lcom/twitter/util/math/Size;->a:Lcom/twitter/util/serialization/ah;

    .line 324
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/core/MediaEntity;->i:J

    .line 325
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/core/MediaEntity;->j:J

    .line 326
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    .line 327
    iget-object v0, p2, Lcom/twitter/model/core/MediaEntity;->q:Ljava/util/List;

    sget-object v1, Lcom/twitter/model/core/bs;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 328
    iget-object v0, p2, Lcom/twitter/model/core/MediaEntity;->p:Ljava/util/List;

    sget-object v1, Lcom/twitter/model/core/am;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 329
    iget-object v0, p2, Lcom/twitter/model/core/MediaEntity;->o:Lcom/twitter/model/core/ap;

    sget-object v1, Lcom/twitter/model/core/ap;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/MediaEntity;->s:Lcom/twitter/model/av/VideoCta;

    sget-object v2, Lcom/twitter/model/av/VideoCta;->a:Lcom/twitter/util/serialization/ah;

    .line 330
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/MediaEntity;->t:Ljava/lang/String;

    .line 331
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/core/MediaEntity;->u:Z

    .line 332
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/MediaEntity;->v:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/MediaEntity;->k:Lcom/twitter/model/core/TwitterUser;

    sget-object v2, Lcom/twitter/model/core/TwitterUser;->a:Lcom/twitter/util/serialization/d;

    .line 334
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/core/MediaEntity;->w:Z

    .line 335
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 336
    iget-object v0, p2, Lcom/twitter/model/core/MediaEntity;->r:Ljava/util/List;

    sget-object v1, Lcpb;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 337
    iget-object v0, p2, Lcom/twitter/model/core/MediaEntity;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 338
    iget-object v0, p2, Lcom/twitter/model/core/MediaEntity;->y:Lcom/twitter/model/core/ag;

    sget-object v1, Lcom/twitter/model/core/ag;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 339
    iget-object v0, p2, Lcom/twitter/model/core/MediaEntity;->z:Lcom/twitter/model/core/aj;

    sget-object v1, Lcom/twitter/model/core/aj;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 340
    iget-object v0, p2, Lcom/twitter/model/core/MediaEntity;->A:Ljava/util/List;

    sget-object v1, Lcom/twitter/model/media/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 341
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/cx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    check-cast p2, Lcom/twitter/model/core/MediaEntity;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ab;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/MediaEntity;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    check-cast p2, Lcom/twitter/model/core/MediaEntity;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ab;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/MediaEntity;)V

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
    .line 316
    check-cast p2, Lcom/twitter/model/core/MediaEntity;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ab;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/MediaEntity;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/twitter/model/core/ab;->a()Lcom/twitter/model/core/aa;

    move-result-object v0

    return-object v0
.end method
