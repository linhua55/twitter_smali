.class final Laqi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcom/twitter/model/people/aa;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/people/aa;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/people/aa;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p1, Lcom/twitter/model/people/aa;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    check-cast p1, Lcom/twitter/model/people/aa;

    invoke-virtual {p0, p1}, Laqi;->a(Lcom/twitter/model/people/aa;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
