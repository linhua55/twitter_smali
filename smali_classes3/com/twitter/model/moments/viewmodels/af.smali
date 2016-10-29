.class public Lcom/twitter/model/moments/viewmodels/af;
.super Lcom/twitter/model/moments/viewmodels/y;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/moments/viewmodels/ai;


# instance fields
.field private final a:Lcom/twitter/model/moments/bd;


# direct methods
.method protected constructor <init>(Lcom/twitter/model/moments/viewmodels/ag;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/y;-><init>(Lcom/twitter/model/moments/viewmodels/z;)V

    .line 21
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/ag;->j:Lcom/twitter/model/moments/bd;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/af;->a:Lcom/twitter/model/moments/bd;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/twitter/model/moments/viewmodels/af;)Lcom/twitter/model/moments/bd;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/af;->a:Lcom/twitter/model/moments/bd;

    return-object v0
.end method


# virtual methods
.method public e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->a:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

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
    .line 45
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/af;->v()Lcom/twitter/model/moments/bd;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/model/moments/viewmodels/l;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/af;->r()Lcom/twitter/model/moments/viewmodels/ag;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/twitter/model/moments/viewmodels/ag;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/twitter/model/moments/viewmodels/ah;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/ah;-><init>(Lcom/twitter/model/moments/viewmodels/af;)V

    return-object v0
.end method

.method public v()Lcom/twitter/model/moments/bd;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/af;->a:Lcom/twitter/model/moments/bd;

    return-object v0
.end method
