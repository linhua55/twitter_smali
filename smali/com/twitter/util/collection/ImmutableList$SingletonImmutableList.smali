.class final Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;
.super Lcom/twitter/util/collection/ImmutableList;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/collection/ax;
.implements Ljava/io/Externalizable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/util/collection/ImmutableList",
        "<TT;>;",
        "Lcom/twitter/util/collection/ax",
        "<TT;>;",
        "Ljava/io/Externalizable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x39b1055da81caa7dL


# instance fields
.field private mItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/twitter/util/collection/ImmutableList;-><init>()V

    .line 220
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/twitter/util/collection/ImmutableList;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    .line 224
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Lcom/twitter/util/object/ObjectUtils;->d()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 228
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    .line 229
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 228
    :goto_0
    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    invoke-static {v0}, Lczq;->a(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 298
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    invoke-static {v0, p1}, Lczv;->a(Ljava/lang/Object;I)Ljava/util/ListIterator;

    move-result-object v0

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
    .line 319
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    .line 320
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 306
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 309
    :cond_1
    if-ne p1, p2, :cond_2

    invoke-static {}, Lcom/twitter/util/collection/ImmutableList;->c()Lcom/twitter/util/collection/ImmutableList;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    aput-object v2, v0, v1

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
    .line 314
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;->mItem:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 315
    return-void
.end method
