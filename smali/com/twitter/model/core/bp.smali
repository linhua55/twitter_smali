.class Lcom/twitter/model/core/bp;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/core/bm;",
        "Lcom/twitter/model/core/bo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/bn;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/twitter/model/core/bp;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/core/bo;
    .locals 1

    .prologue
    .line 440
    new-instance v0, Lcom/twitter/model/core/bo;

    invoke-direct {v0}, Lcom/twitter/model/core/bo;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/bo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 446
    sget-object v0, Lcom/twitter/model/core/cx;->C:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    invoke-virtual {p2, v0}, Lcom/twitter/model/core/bo;->a(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/MediaEntity;->b:Lcom/twitter/util/serialization/ah;

    .line 447
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ac;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/bo;->a(Lcom/twitter/model/core/ac;)Lcom/twitter/model/core/bo;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/av;->b:Lcom/twitter/util/serialization/ah;

    .line 448
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/bo;->b(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/q;->b:Lcom/twitter/util/serialization/ah;

    .line 449
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/bo;->c(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/b;->b:Lcom/twitter/util/serialization/ah;

    .line 450
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    invoke-virtual {v1, v0}, Lcom/twitter/model/core/bo;->d(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    .line 451
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
    .line 425
    check-cast p2, Lcom/twitter/model/core/bo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/bp;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/bo;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    sget-object v0, Lcom/twitter/model/core/cx;->C:Lcom/twitter/util/serialization/ah;

    iget-object v1, p2, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 431
    sget-object v0, Lcom/twitter/model/core/MediaEntity;->b:Lcom/twitter/util/serialization/ah;

    iget-object v1, p2, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 432
    sget-object v0, Lcom/twitter/model/core/av;->b:Lcom/twitter/util/serialization/ah;

    iget-object v1, p2, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 433
    sget-object v0, Lcom/twitter/model/core/q;->b:Lcom/twitter/util/serialization/ah;

    iget-object v1, p2, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 434
    sget-object v0, Lcom/twitter/model/core/b;->b:Lcom/twitter/util/serialization/ah;

    iget-object v1, p2, Lcom/twitter/model/core/bm;->g:Lcom/twitter/model/core/j;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 435
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
    .line 425
    check-cast p2, Lcom/twitter/model/core/bm;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/bp;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bm;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/twitter/model/core/bp;->a()Lcom/twitter/model/core/bo;

    move-result-object v0

    return-object v0
.end method
