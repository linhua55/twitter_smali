.class Lcom/twitter/android/wh;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/android/wg;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/wd;)V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/twitter/android/wh;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/android/wg;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 625
    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    sget-object v1, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 626
    invoke-static {v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 625
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 627
    sget-object v1, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 628
    invoke-static {v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    .line 627
    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 629
    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 630
    invoke-static {v2}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 629
    invoke-virtual {p1, v2}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 631
    sget-object v3, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 632
    invoke-static {v3}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v3

    .line 631
    invoke-virtual {p1, v3}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 634
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 636
    new-instance v4, Lcom/twitter/android/wg;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/twitter/android/wg;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    move-object v0, v4

    .line 639
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/android/wg;

    invoke-direct {v0}, Lcom/twitter/android/wg;-><init>()V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/android/wg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    .line 611
    invoke-virtual {p2}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 612
    invoke-static {v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    .line 611
    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 613
    invoke-virtual {p2}, Lcom/twitter/android/wg;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    sget-object v3, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 614
    invoke-static {v2, v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 613
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 615
    invoke-virtual {p2}, Lcom/twitter/android/wg;->c()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 616
    invoke-static {v2}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 615
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 617
    invoke-virtual {p2}, Lcom/twitter/android/wg;->d()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 618
    invoke-static {v2}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 617
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 619
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
    .line 605
    check-cast p2, Lcom/twitter/android/wg;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/wh;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/android/wg;)V

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
    .line 605
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/wh;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/android/wg;

    move-result-object v0

    return-object v0
.end method
