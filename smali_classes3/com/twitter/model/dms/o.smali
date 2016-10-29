.class abstract Lcom/twitter/model/dms/o;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/n;",
        "B:",
        "Lcom/twitter/model/dms/p",
        "<TB;TE;>;>",
        "Lcom/twitter/util/serialization/d",
        "<TE;TB;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    .line 371
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/twitter/util/serialization/d;-><init>(I)V

    .line 375
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/p;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "TB;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/dms/p;->a(J)Lcom/twitter/model/dms/p;

    move-result-object v0

    .line 393
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/p;->b(Ljava/lang/String;)Lcom/twitter/model/dms/p;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    .line 394
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    invoke-virtual {v1, v0}, Lcom/twitter/model/dms/p;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/dms/p;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/dms/i;->a:Lcom/twitter/util/serialization/ah;

    .line 395
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/i;

    invoke-virtual {v1, v0}, Lcom/twitter/model/dms/p;->a(Lcom/twitter/model/dms/i;)Lcom/twitter/model/dms/p;

    move-result-object v0

    .line 396
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/p;->a(Ljava/lang/String;)Lcom/twitter/model/dms/p;

    move-result-object v0

    .line 397
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/p;->a(Z)Lcom/twitter/model/dms/p;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/p;->b(Z)Lcom/twitter/model/dms/p;

    move-result-object v0

    .line 399
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/p;->a(I)Lcom/twitter/model/dms/p;

    .line 400
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
    .line 367
    check-cast p2, Lcom/twitter/model/dms/p;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/o;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/p;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-wide v0, p2, Lcom/twitter/model/dms/n;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    .line 380
    iget-object v0, p2, Lcom/twitter/model/dms/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 381
    iget-object v0, p2, Lcom/twitter/model/dms/n;->c:Lcom/twitter/model/core/bm;

    sget-object v1, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 382
    iget-object v0, p2, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    sget-object v1, Lcom/twitter/model/dms/i;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 383
    iget-object v0, p2, Lcom/twitter/model/dms/n;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 384
    iget-boolean v0, p2, Lcom/twitter/model/dms/n;->f:Z

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 385
    iget-boolean v0, p2, Lcom/twitter/model/dms/n;->g:Z

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 386
    iget v0, p2, Lcom/twitter/model/dms/n;->h:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 387
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
    .line 367
    check-cast p2, Lcom/twitter/model/dms/n;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/o;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/n;)V

    return-void
.end method
