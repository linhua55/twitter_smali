.class final Laqc;
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
        "Lcom/twitter/model/json/people/JsonModulePage;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/json/people/JsonModulePage;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/json/people/JsonModulePage;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/people/JsonModulePage;

    iget-object v0, v0, Lcom/twitter/model/json/people/JsonModulePage;->b:Lcom/twitter/model/people/l;

    invoke-static {v0}, Laqb;->a(Lcom/twitter/model/people/l;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/twitter/model/json/people/JsonModulePage;

    invoke-virtual {p0, p1}, Laqc;->a(Lcom/twitter/model/json/people/JsonModulePage;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
