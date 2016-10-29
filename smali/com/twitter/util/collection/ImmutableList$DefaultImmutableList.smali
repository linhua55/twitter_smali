.class Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;
.super Lcom/twitter/util/collection/ImmutableList;
.source "Twttr"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/util/collection/ImmutableList",
        "<TT;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x54ff2384324bea8aL


# instance fields
.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/twitter/util/collection/ImmutableList;-><init>()V

    .line 334
    invoke-static {}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->c()Lcom/twitter/util/collection/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    .line 335
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/twitter/util/collection/ImmutableList;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    .line 339
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 343
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    .line 344
    invoke-static {v0, p1}, Lczz;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    .line 344
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
    .line 376
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

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
    .line 370
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lczq;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
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
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->listIterator(I)Ljava/util/ListIterator;

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
    .line 398
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    invoke-static {v0, p1}, Lczv;->a(Ljava/util/List;I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 428
    if-nez v0, :cond_1

    .line 429
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 430
    invoke-static {v1}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v2

    .line 431
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 432
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    iput-object v2, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    .line 438
    :goto_1
    return-void

    .line 436
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->size()I

    move-result v0

    .line 405
    if-ltz p1, :cond_0

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 408
    :cond_1
    if-ne p1, p2, :cond_3

    .line 409
    invoke-static {}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->c()Lcom/twitter/util/collection/ImmutableList;

    move-result-object p0

    .line 415
    :cond_2
    :goto_0
    return-object p0

    .line 410
    :cond_3
    add-int/lit8 v1, p1, 0x1

    if-ne v1, p2, :cond_4

    .line 411
    invoke-virtual {p0, p1}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 412
    :cond_4
    if-nez p1, :cond_5

    if-eq p2, v0, :cond_2

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 422
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;->mList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 423
    return-void
.end method
