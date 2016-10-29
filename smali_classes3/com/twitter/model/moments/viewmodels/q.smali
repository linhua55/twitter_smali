.class public Lcom/twitter/model/moments/viewmodels/q;
.super Lcom/twitter/model/moments/viewmodels/MomentPage;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/twitter/util/math/Size;

.field public final c:Lcom/twitter/model/moments/k;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/r;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;-><init>(Lcom/twitter/model/moments/viewmodels/l;)V

    .line 19
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/r;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/q;->a:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/r;->g:Lcom/twitter/util/math/Size;

    sget-object v1, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/q;->b:Lcom/twitter/util/math/Size;

    .line 21
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/r;->h:Lcom/twitter/model/moments/k;

    sget-object v1, Lcom/twitter/model/moments/k;->b:Lcom/twitter/model/moments/k;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/q;->c:Lcom/twitter/model/moments/k;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/moments/viewmodels/r;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/twitter/model/moments/viewmodels/s;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/s;-><init>(Lcom/twitter/model/moments/viewmodels/q;)V

    return-object v0
.end method

.method public e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->f:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/model/moments/viewmodels/l;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/q;->a()Lcom/twitter/model/moments/viewmodels/r;

    move-result-object v0

    return-object v0
.end method
