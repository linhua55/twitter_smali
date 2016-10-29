.class Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;
.super Lcom/twitter/util/collection/ImmutableMap;
.source "Twttr"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/util/collection/ImmutableMap",
        "<TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xc38ecb58f8de707L


# instance fields
.field private transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/twitter/util/collection/ImmutableMap;-><init>()V

    .line 291
    invoke-static {}, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->a()Lcom/twitter/util/collection/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    .line 292
    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/twitter/util/collection/ImmutableMap;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    .line 296
    return-void
.end method


# virtual methods
.method c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableSet;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->b:Ljava/util/Set;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->b:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 300
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableSet;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->a:Ljava/util/Set;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->a:Ljava/util/Set;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    .line 380
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->c:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableCollection;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->c:Ljava/util/Collection;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;->mMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 375
    return-void
.end method
