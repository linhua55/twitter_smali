.class public Lbbq;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/util/object/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/b",
            "<",
            "Lcom/twitter/database/lru/t;",
            "Lcom/twitter/database/lru/am",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/util/object/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/database/lru/t;",
            "Lcom/twitter/database/lru/am",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/twitter/util/object/b;

    invoke-direct {v0, p1}, Lcom/twitter/util/object/b;-><init>(Lcom/twitter/util/object/c;)V

    iput-object v0, p0, Lbbq;->a:Lcom/twitter/util/object/b;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/lru/t;)Lcom/twitter/database/lru/am;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/database/lru/t",
            "<TK;TV;>;)",
            "Lcom/twitter/database/lru/am",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lbbq;->a:Lcom/twitter/util/object/b;

    invoke-virtual {v0, p1}, Lcom/twitter/util/object/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/lru/am;

    return-object v0
.end method
