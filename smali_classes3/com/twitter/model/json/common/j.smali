.class public Lcom/twitter/model/json/common/j;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/json/common/e;)Lcom/twitter/util/object/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "J:",
            "Lcom/twitter/model/json/common/e",
            "<TM;>;>(TJ;)",
            "Lcom/twitter/util/object/h",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 189
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/json/common/e;->c()Lcom/twitter/util/object/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/json/common/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "J:",
            "Lcom/twitter/model/json/common/f",
            "<TM;>;>(TJ;)TM;"
        }
    .end annotation

    .prologue
    .line 177
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/json/common/f;->b()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/json/common/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "J:",
            "Lcom/twitter/model/json/common/f",
            "<TM;>;>(TJ;TM;)TM;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p0}, Lcom/twitter/model/json/common/j;->a(Lcom/twitter/model/json/common/f;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/twitter/util/collection/d;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "J:",
            "Lcom/twitter/model/json/common/f",
            "<TM;>;C::",
            "Ljava/util/Collection",
            "<TM;>;>(",
            "Ljava/lang/Iterable",
            "<TJ;>;",
            "Lcom/twitter/util/collection/d",
            "<TM;TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/common/f;

    .line 80
    invoke-virtual {v0}, Lcom/twitter/model/json/common/f;->b()Ljava/lang/Object;

    move-result-object v0

    .line 81
    invoke-interface {p1, v0}, Lcom/twitter/util/collection/d;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/d;

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {p1}, Lcom/twitter/util/collection/d;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "J:",
            "Lcom/twitter/model/json/common/f",
            "<TM;>;>(",
            "Ljava/lang/Iterable",
            "<TJ;>;)",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/j;->a(Ljava/lang/Iterable;Lcom/twitter/util/collection/d;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+TT;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/twitter/model/json/common/k;

    invoke-direct {v0}, Lcom/twitter/model/json/common/k;-><init>()V

    invoke-static {p0, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Map;Lczn;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 193
    const-class v0, Lcom/twitter/model/json/common/b;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+TT;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/twitter/model/json/common/l;

    invoke-direct {v0}, Lcom/twitter/model/json/common/l;-><init>()V

    invoke-static {p0, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Map;Lczn;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
