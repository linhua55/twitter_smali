.class final Lalw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/twitter/model/moments/t;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lalz;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lalw;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/t;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lalz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lalu;->c()Lczn;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
