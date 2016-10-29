.class public Lcom/twitter/util/collection/e;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)",
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/twitter/util/collection/f;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/f;-><init>(Lcom/twitter/util/serialization/ah;)V

    return-object v0
.end method

.method public static a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ah",
            "<TK;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TV;>;)",
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lcom/twitter/util/collection/i;

    invoke-direct {v0, p0, p1}, Lcom/twitter/util/collection/i;-><init>(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    return-object v0
.end method

.method public static a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/aj;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/aj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v0

    .line 107
    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid list type in deserialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :pswitch_0
    invoke-static {p0, p1}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/collection/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-static {p0, p1}, Lcom/twitter/util/collection/e;->c(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/aj;",
            "Lcom/twitter/util/serialization/ah",
            "<TK;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {p0}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/aj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 447
    :goto_0
    return-object v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v0

    .line 442
    packed-switch v0, :pswitch_data_0

    .line 450
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid map type in deserialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/collection/ImmutableMap;

    move-result-object v0

    goto :goto_0

    .line 447
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/twitter/util/collection/e;->c(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/twitter/util/serialization/ak;Lcom/twitter/util/collection/ImmutableList;Lcom/twitter/util/serialization/ah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ak;",
            "Lcom/twitter/util/collection/ImmutableList",
            "<TT;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 142
    instance-of v0, p1, Lcom/twitter/util/collection/ImmutableList$EmptyImmutableList;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v1}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_0
    instance-of v0, p1, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 146
    invoke-virtual {p1, v1}, Lcom/twitter/util/collection/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 149
    check-cast p1, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;

    invoke-virtual {p1}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->e()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-static {p0, v0, p2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    goto :goto_0
.end method

.method public static a(Lcom/twitter/util/serialization/ak;Lcom/twitter/util/collection/ImmutableMap;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ak;",
            "Lcom/twitter/util/collection/ImmutableMap",
            "<TK;TV;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TK;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    instance-of v0, p1, Lcom/twitter/util/collection/ImmutableMap$EmptyImmutableMap;

    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 513
    :goto_0
    return-void

    .line 503
    :cond_0
    instance-of v0, p1, Lcom/twitter/util/collection/ImmutableMap$SingletonImmutableMap;

    if-eqz v0, :cond_1

    .line 504
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 505
    check-cast p1, Lcom/twitter/util/collection/ImmutableMap$SingletonImmutableMap;

    invoke-virtual {p1}, Lcom/twitter/util/collection/ImmutableMap$SingletonImmutableMap;->c()Ljava/util/Map$Entry;

    move-result-object v0

    .line 506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 507
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p0, v0}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 510
    check-cast p1, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;

    invoke-virtual {p1}, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->c()Ljava/util/Map;

    move-result-object v0

    .line 511
    invoke-static {p0, v0, p2, p3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    goto :goto_0
.end method

.method public static a(Lcom/twitter/util/serialization/ak;Lcom/twitter/util/collection/ImmutableSet;Lcom/twitter/util/serialization/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ak;",
            "Lcom/twitter/util/collection/ImmutableSet",
            "<TT;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    instance-of v0, p1, Lcom/twitter/util/collection/ImmutableSet$EmptyImmutableSet;

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 324
    :goto_0
    return-void

    .line 316
    :cond_0
    instance-of v0, p1, Lcom/twitter/util/collection/ImmutableSet$SingletonImmutableSet;

    if-eqz v0, :cond_1

    .line 317
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 318
    check-cast p1, Lcom/twitter/util/collection/ImmutableSet$SingletonImmutableSet;

    invoke-virtual {p1}, Lcom/twitter/util/collection/ImmutableSet$SingletonImmutableSet;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 321
    check-cast p1, Lcom/twitter/util/collection/ImmutableSet$DefaultImmutableSet;

    invoke-virtual {p1}, Lcom/twitter/util/collection/ImmutableSet$DefaultImmutableSet;->e()Ljava/util/Set;

    move-result-object v0

    .line 322
    invoke-static {p0, v0, p2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V

    goto :goto_0
.end method

.method public static a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ak;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    instance-of v0, p1, Lcom/twitter/util/collection/ImmutableList;

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 73
    check-cast p1, Lcom/twitter/util/collection/ImmutableList;

    invoke-static {p0, p1, p2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/util/collection/ImmutableList;Lcom/twitter/util/serialization/ah;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 76
    invoke-static {p0, p1, p2}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    goto :goto_0
.end method

.method public static a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ak;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TK;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {p0, p1}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    instance-of v0, p1, Lcom/twitter/util/collection/ImmutableMap;

    if-eqz v0, :cond_1

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 410
    check-cast p1, Lcom/twitter/util/collection/ImmutableMap;

    invoke-static {p0, p1, p2, p3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/util/collection/ImmutableMap;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 413
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    goto :goto_0
.end method

.method public static a(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ak;",
            "Ljava/util/Set",
            "<TT;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p0, p1}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    instance-of v0, p1, Lcom/twitter/util/collection/ImmutableSet;

    if-eqz v0, :cond_1

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 245
    check-cast p1, Lcom/twitter/util/collection/ImmutableSet;

    invoke-static {p0, p1, p2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/util/collection/ImmutableSet;Lcom/twitter/util/serialization/ah;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    .line 248
    invoke-static {p0, p1, p2}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V

    goto :goto_0
.end method

.method public static b(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/collection/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/aj;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)",
            "Lcom/twitter/util/collection/ImmutableList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v0

    .line 124
    packed-switch v0, :pswitch_data_0

    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid immutable list type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :pswitch_0
    invoke-static {}, Lcom/twitter/util/collection/ImmutableList;->c()Lcom/twitter/util/collection/ImmutableList;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 129
    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableList;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-static {p0, p1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ImmutableList;

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/collection/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/aj;",
            "Lcom/twitter/util/serialization/ah",
            "<TK;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TV;>;)",
            "Lcom/twitter/util/collection/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v0

    .line 479
    packed-switch v0, :pswitch_data_0

    .line 493
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid ImmutableMap type in deserialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :pswitch_0
    invoke-static {}, Lcom/twitter/util/collection/ImmutableMap;->a()Lcom/twitter/util/collection/ImmutableMap;

    move-result-object v0

    .line 489
    :goto_0
    return-object v0

    .line 484
    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    .line 485
    invoke-virtual {p2, p0}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v1

    .line 486
    invoke-static {v0, v1}, Lcom/twitter/util/collection/ImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ImmutableMap;

    move-result-object v0

    goto :goto_0

    .line 490
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableMap;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ImmutableMap;

    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)",
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lcom/twitter/util/collection/h;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/h;-><init>(Lcom/twitter/util/serialization/ah;)V

    return-object v0
.end method

.method public static b(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ak;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 207
    instance-of v0, p1, Lcom/twitter/util/collection/ax;

    if-eqz v0, :cond_1

    .line 208
    instance-of v0, p1, Lcom/twitter/util/collection/MutableList$UniqueSortedArrayList;

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    :goto_0
    move-object v0, p1

    .line 213
    check-cast v0, Lcom/twitter/util/collection/ax;

    invoke-interface {v0}, Lcom/twitter/util/collection/ax;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/util/serialization/i;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Comparator;)V

    .line 217
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 218
    invoke-virtual {p2, p0, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    goto :goto_2

    .line 211
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    goto :goto_1

    .line 220
    :cond_2
    return-void
.end method

.method public static b(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ak;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TK;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 572
    instance-of v0, p1, Lcom/twitter/util/collection/ax;

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    move-object v0, p1

    .line 574
    check-cast v0, Lcom/twitter/util/collection/ax;

    invoke-interface {v0}, Lcom/twitter/util/collection/ax;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/util/serialization/i;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Comparator;)V

    .line 580
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 581
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 582
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p0, v0}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    goto :goto_1

    .line 575
    :cond_0
    instance-of v0, p1, Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 576
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    goto :goto_0

    .line 578
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    goto :goto_0

    .line 584
    :cond_2
    return-void
.end method

.method public static b(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ak;",
            "Ljava/util/Set",
            "<TT;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 374
    instance-of v0, p1, Lcom/twitter/util/collection/ax;

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    move-object v0, p1

    .line 376
    check-cast v0, Lcom/twitter/util/collection/MutableSet$ExternalizableTreeSet;

    invoke-virtual {v0}, Lcom/twitter/util/collection/MutableSet$ExternalizableTreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/util/serialization/i;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Comparator;)V

    .line 380
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 381
    invoke-virtual {p2, p0, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    goto :goto_1

    .line 378
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ak;->b(B)Lcom/twitter/util/serialization/ak;

    goto :goto_0

    .line 383
    :cond_1
    return-void
.end method

.method public static c(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)",
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 693
    new-instance v0, Lcom/twitter/util/collection/g;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/g;-><init>(Lcom/twitter/util/serialization/ah;)V

    return-object v0
.end method

.method public static c(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/aj;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v2

    .line 177
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v0

    .line 179
    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid list type found in deserialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :pswitch_0
    invoke-static {p0}, Lcom/twitter/util/serialization/i;->a(Lcom/twitter/util/serialization/aj;)Ljava/util/Comparator;

    move-result-object v0

    .line 182
    invoke-static {v0, v2}, Lcom/twitter/util/collection/MutableList;->b(Ljava/util/Comparator;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/MutableList$ExternalizableArrayList;

    .line 198
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 199
    invoke-virtual {p1, p0}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/twitter/util/collection/MutableList$ExternalizableArrayList;->a(ILjava/lang/Object;)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    :pswitch_1
    invoke-static {p0}, Lcom/twitter/util/serialization/i;->a(Lcom/twitter/util/serialization/aj;)Ljava/util/Comparator;

    move-result-object v0

    .line 187
    invoke-static {v0, v2}, Lcom/twitter/util/collection/MutableList;->a(Ljava/util/Comparator;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/MutableList$ExternalizableArrayList;

    goto :goto_0

    .line 191
    :pswitch_2
    invoke-static {v2}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/MutableList$ExternalizableArrayList;

    goto :goto_0

    .line 201
    :cond_0
    return-object v0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/aj;",
            "Lcom/twitter/util/serialization/ah",
            "<TK;>;",
            "Lcom/twitter/util/serialization/ah",
            "<TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v2

    .line 540
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v0

    .line 542
    packed-switch v0, :pswitch_data_0

    .line 557
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid map type in deserialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :pswitch_0
    invoke-static {p0}, Lcom/twitter/util/serialization/i;->a(Lcom/twitter/util/serialization/aj;)Ljava/util/Comparator;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lcom/twitter/util/collection/MutableMap;->a(Ljava/util/Comparator;)Ljava/util/Map;

    move-result-object v0

    .line 560
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 561
    invoke-virtual {p1, p0}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v3

    .line 562
    invoke-virtual {p2, p0}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v4

    .line 563
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 549
    :pswitch_1
    invoke-static {v2}, Lcom/twitter/util/collection/MutableMap;->b(I)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 553
    :pswitch_2
    invoke-static {v2}, Lcom/twitter/util/collection/MutableMap;->a(I)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_0
    return-object v0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static d(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/aj;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {p0}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/aj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 265
    :goto_0
    return-object v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v0

    .line 260
    packed-switch v0, :pswitch_data_0

    .line 268
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid set type in deserialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :pswitch_0
    invoke-static {p0, p1}, Lcom/twitter/util/collection/e;->e(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/collection/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-static {p0, p1}, Lcom/twitter/util/collection/e;->f(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static e(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/collection/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/aj;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)",
            "Lcom/twitter/util/collection/ImmutableSet",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v0

    .line 296
    packed-switch v0, :pswitch_data_0

    .line 307
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid ImmutableSet type in deserialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :pswitch_0
    invoke-static {}, Lcom/twitter/util/collection/ImmutableSet;->c()Lcom/twitter/util/collection/ImmutableSet;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    .line 301
    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ImmutableSet;

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-static {p0, p1}, Lcom/twitter/util/collection/e;->d(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableSet;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ImmutableSet;

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static f(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/serialization/aj;",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v2

    .line 349
    invoke-virtual {p0}, Lcom/twitter/util/serialization/aj;->c()B

    move-result v0

    .line 351
    packed-switch v0, :pswitch_data_0

    .line 362
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid set type in deserialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :pswitch_0
    invoke-static {p0}, Lcom/twitter/util/serialization/i;->a(Lcom/twitter/util/serialization/aj;)Ljava/util/Comparator;

    move-result-object v0

    .line 354
    invoke-static {v0}, Lcom/twitter/util/collection/MutableSet;->a(Ljava/util/Comparator;)Ljava/util/Set;

    move-result-object v0

    .line 365
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 366
    invoke-virtual {p1, p0}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 358
    :pswitch_1
    invoke-static {v2}, Lcom/twitter/util/collection/MutableSet;->a(I)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_0
    return-object v0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
