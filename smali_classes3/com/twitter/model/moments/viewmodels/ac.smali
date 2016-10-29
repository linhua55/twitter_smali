.class public Lcom/twitter/model/moments/viewmodels/ac;
.super Lcom/twitter/model/moments/viewmodels/y;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/moments/viewmodels/e;


# instance fields
.field public final a:Lcom/twitter/model/moments/k;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/ad;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/y;-><init>(Lcom/twitter/model/moments/viewmodels/z;)V

    .line 18
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/ad;->j:Lcom/twitter/model/moments/k;

    sget-object v1, Lcom/twitter/model/moments/k;->b:Lcom/twitter/model/moments/k;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/ac;->a:Lcom/twitter/model/moments/k;

    .line 19
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/viewmodels/ac;->b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ac;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/ac;->c()Lcom/twitter/model/moments/viewmodels/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/model/moments/viewmodels/ad;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/ad;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/ac;

    return-object v0
.end method

.method public c()Lcom/twitter/model/moments/viewmodels/ad;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/twitter/model/moments/viewmodels/ad;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/ad;-><init>(Lcom/twitter/model/moments/viewmodels/ac;)V

    return-object v0
.end method

.method public e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->d:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    return-object v0
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/ac;->a:Lcom/twitter/model/moments/k;

    invoke-static {v0}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/model/moments/viewmodels/l;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/ac;->c()Lcom/twitter/model/moments/viewmodels/ad;

    move-result-object v0

    return-object v0
.end method
