.class Lclz;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lclw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/util/serialization/ae;-><init>(I)V

    .line 501
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lclw;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 520
    new-instance v2, Lcly;

    invoke-direct {v2}, Lcly;-><init>()V

    .line 522
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcly;->a(Ljava/lang/String;)Lcly;

    .line 523
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcly;->b(Ljava/lang/String;)Lcly;

    .line 524
    if-ge p2, v3, :cond_0

    .line 526
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    .line 528
    :cond_0
    if-ge p2, v3, :cond_4

    sget-object v0, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    move-object v1, v0

    .line 530
    :goto_0
    sget-object v0, Lcls;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v2, v0}, Lcly;->a(Ljava/util/Map;)Lcly;

    .line 535
    :cond_1
    sget-object v0, Lcom/twitter/model/core/TwitterUser;->a:Lcom/twitter/util/serialization/d;

    .line 536
    invoke-static {p1, v1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    move-result-object v0

    .line 535
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcly;->b(Ljava/util/Map;)Lcly;

    .line 537
    if-ge p2, v3, :cond_2

    .line 539
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    .line 540
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    .line 541
    sget-object v0, Lcls;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    .line 542
    sget-object v0, Lcom/twitter/model/core/TwitterUser;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    .line 544
    :cond_2
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcly;->c(Ljava/lang/String;)Lcly;

    .line 545
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcly;->d(Ljava/lang/String;)Lcly;

    .line 546
    if-ge p2, v3, :cond_3

    .line 548
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    .line 551
    :cond_3
    invoke-virtual {v2}, Lcly;->e()Lclw;

    move-result-object v0

    return-object v0

    .line 528
    :cond_4
    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    move-object v1, v0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lclw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-static {p2}, Lclw;->b(Lclw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 507
    invoke-static {p2}, Lclw;->a(Lclw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 508
    invoke-virtual {p2}, Lclw;->j()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcls;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    .line 510
    invoke-static {p2}, Lclw;->c(Lclw;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/model/core/TwitterUser;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    .line 512
    invoke-static {p2}, Lclw;->e(Lclw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 513
    invoke-static {p2}, Lclw;->d(Lclw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 514
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
    .line 498
    check-cast p2, Lclw;

    invoke-virtual {p0, p1, p2}, Lclz;->a(Lcom/twitter/util/serialization/ak;Lclw;)V

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
    .line 498
    invoke-virtual {p0, p1, p2}, Lclz;->a(Lcom/twitter/util/serialization/aj;I)Lclw;

    move-result-object v0

    return-object v0
.end method
