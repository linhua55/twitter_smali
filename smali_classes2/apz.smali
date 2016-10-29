.class final Lapz;
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
        "Lcom/twitter/model/people/aa;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/json/people/JsonModulePage;)Lcom/twitter/model/people/aa;
    .locals 2

    .prologue
    .line 247
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Lcom/twitter/model/people/ab;

    invoke-direct {v0}, Lcom/twitter/model/people/ab;-><init>()V

    iget-object v1, p1, Lcom/twitter/model/json/people/JsonModulePage;->b:Lcom/twitter/model/people/l;

    .line 249
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->a(Lcom/twitter/model/people/l;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p1, Lcom/twitter/model/json/people/JsonModulePage;->c:Ljava/lang/String;

    .line 250
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->a(Ljava/lang/String;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p1, Lcom/twitter/model/json/people/JsonModulePage;->d:Lcom/twitter/model/people/aj;

    .line 251
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->a(Lcom/twitter/model/people/aj;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p1, Lcom/twitter/model/json/people/JsonModulePage;->e:Ljava/util/List;

    .line 252
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->a(Ljava/lang/Iterable;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    iget-object v1, p1, Lcom/twitter/model/json/people/JsonModulePage;->f:Ljava/util/List;

    .line 253
    invoke-static {v1}, Laps;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ab;->b(Ljava/lang/Iterable;)Lcom/twitter/model/people/c;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/ab;

    .line 254
    invoke-virtual {v0}, Lcom/twitter/model/people/ab;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/aa;

    .line 248
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    check-cast p1, Lcom/twitter/model/json/people/JsonModulePage;

    invoke-virtual {p0, p1}, Lapz;->a(Lcom/twitter/model/json/people/JsonModulePage;)Lcom/twitter/model/people/aa;

    move-result-object v0

    return-object v0
.end method
