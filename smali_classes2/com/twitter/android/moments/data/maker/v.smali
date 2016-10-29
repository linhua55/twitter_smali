.class Lcom/twitter/android/moments/data/maker/v;
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
        "Lcom/twitter/model/moments/maker/y;",
        "Lcom/twitter/model/moments/maker/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/twitter/android/moments/data/maker/t;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/maker/t;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/v;->b:Lcom/twitter/android/moments/data/maker/t;

    iput-object p2, p0, Lcom/twitter/android/moments/data/maker/v;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/y;)Lcom/twitter/model/moments/maker/y;
    .locals 2

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Lcom/twitter/model/moments/maker/aa;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/aa;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/v;->a:Ljava/lang/Iterable;

    .line 53
    invoke-static {v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/aa;->a(Ljava/util/List;)Lcom/twitter/model/moments/maker/aa;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/aa;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/y;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/v;->a:Ljava/lang/Iterable;

    invoke-virtual {p1, v0}, Lcom/twitter/model/moments/maker/y;->a(Ljava/lang/Iterable;)Lcom/twitter/model/moments/maker/y;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, Lcom/twitter/model/moments/maker/y;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/maker/v;->a(Lcom/twitter/model/moments/maker/y;)Lcom/twitter/model/moments/maker/y;

    move-result-object v0

    return-object v0
.end method
