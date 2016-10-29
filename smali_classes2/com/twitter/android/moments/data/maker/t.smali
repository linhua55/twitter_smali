.class public Lcom/twitter/android/moments/data/maker/t;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/database/lru/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/android/moments/data/maker/q;


# direct methods
.method public constructor <init>(Lcom/twitter/database/lru/am;Lcom/twitter/android/moments/data/maker/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;",
            "Lcom/twitter/android/moments/data/maker/q;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/t;->a:Lcom/twitter/database/lru/am;

    .line 30
    iput-object p2, p0, Lcom/twitter/android/moments/data/maker/t;->b:Lcom/twitter/android/moments/data/maker/q;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/maker/t;)Lcom/twitter/android/moments/data/maker/q;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/t;->b:Lcom/twitter/android/moments/data/maker/q;

    return-object v0
.end method


# virtual methods
.method public a(JLcom/twitter/model/moments/maker/w;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/model/moments/maker/w;",
            ")",
            "Lrx/w",
            "<",
            "Lcom/twitter/android/moments/data/maker/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p3}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/moments/data/maker/t;->a(JLjava/lang/Iterable;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/Iterable;)Lrx/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;)",
            "Lrx/w",
            "<",
            "Lcom/twitter/android/moments/data/maker/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/t;->a:Lcom/twitter/database/lru/am;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/data/maker/v;

    invoke-direct {v2, p0, p3}, Lcom/twitter/android/moments/data/maker/v;-><init>(Lcom/twitter/android/moments/data/maker/t;Ljava/lang/Iterable;)V

    invoke-interface {v0, v1, v2}, Lcom/twitter/database/lru/am;->a(Ljava/lang/Object;Ldjj;)Lrx/w;

    move-result-object v0

    .line 59
    invoke-static {p0}, Ldcn;->a(Ljava/lang/Object;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->c(Ldjj;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/maker/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/twitter/android/moments/data/maker/u;-><init>(Lcom/twitter/android/moments/data/maker/t;J)V

    .line 60
    invoke-virtual {v0, v1}, Lrx/w;->b(Ldjf;)Lrx/w;

    move-result-object v0

    .line 48
    return-object v0
.end method
