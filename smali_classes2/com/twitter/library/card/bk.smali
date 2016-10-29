.class public abstract Lcom/twitter/library/card/bk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/twitter/library/card/bl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/card/bk;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/card/bl;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/library/card/bk;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/twitter/library/card/bk;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/bl;

    .line 30
    invoke-interface {v0, p1, p2}, Lcom/twitter/library/card/bl;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/library/card/bl;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/library/card/bk;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method
