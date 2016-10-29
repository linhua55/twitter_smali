.class public final Lcom/twitter/model/stratostore/l;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/util/collection/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/v",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/model/stratostore/i;",
            ">;",
            "Lcom/twitter/model/stratostore/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/stratostore/l;->a:Lcom/twitter/util/collection/v;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/stratostore/k;
    .locals 2

    .prologue
    .line 62
    new-instance v1, Lcom/twitter/model/stratostore/k;

    iget-object v0, p0, Lcom/twitter/model/stratostore/l;->a:Lcom/twitter/util/collection/v;

    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/twitter/model/stratostore/k;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public a(Ljava/lang/Class;Lcom/twitter/model/stratostore/g;)Lcom/twitter/model/stratostore/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/model/stratostore/i;",
            ">;",
            "Lcom/twitter/model/stratostore/g;",
            ")",
            "Lcom/twitter/model/stratostore/l;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/model/stratostore/l;->a:Lcom/twitter/util/collection/v;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 57
    return-object p0
.end method
