.class final Lcom/twitter/android/people/adapters/aj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/people/adapters/ai;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/people/g;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/people/g;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/android/people/adapters/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 82
    invoke-static {p1}, Lcom/twitter/android/people/adapters/ab;->a(Lcom/twitter/model/people/g;)Lcom/twitter/android/people/adapters/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 83
    invoke-static {p1}, Lcom/twitter/android/people/adapters/ab;->g(Lcom/twitter/model/people/g;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 81
    return-object v0
.end method
