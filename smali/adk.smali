.class public Ladk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ladj;
.implements Lcom/twitter/app/common/di/g;


# instance fields
.field private final a:Ladj;

.field private final b:Lcom/twitter/database/lru/am;
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

.field private final c:Lade;


# direct methods
.method public constructor <init>(Ladp;Lcom/twitter/database/lru/am;Lade;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ladp;",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;",
            "Lade;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ladk;->a:Ladj;

    .line 38
    iput-object p2, p0, Ladk;->b:Lcom/twitter/database/lru/am;

    .line 39
    iput-object p3, p0, Ladk;->c:Lade;

    .line 40
    return-void
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Ladk;->a:Ladj;

    .line 47
    invoke-interface {v0, p1, p2}, Ladj;->a(J)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Ladk;->b:Lcom/twitter/database/lru/am;

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twitter/database/lru/am;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v1

    invoke-virtual {v1}, Lrx/w;->b()Lrx/o;

    move-result-object v1

    iget-object v2, p0, Ladk;->c:Lade;

    .line 49
    invoke-virtual {v2}, Lade;->a()Ldjk;

    move-result-object v2

    .line 46
    invoke-static {v0, v1, v2}, Lrx/o;->b(Lrx/o;Lrx/o;Ldjk;)Lrx/o;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lrx/o;->b(Lrx/o;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->c:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_0

    .line 60
    invoke-static {p0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 62
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Ladk;->a:Ladj;

    invoke-interface {v0}, Ladj;->close()V

    .line 55
    return-void
.end method
