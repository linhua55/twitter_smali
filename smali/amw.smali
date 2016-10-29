.class public Lamw;
.super Lamu;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/moments/viewmodels/m;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lamu;-><init>()V

    .line 15
    iput-object p1, p0, Lamw;->a:Lcom/twitter/model/moments/viewmodels/m;

    .line 16
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Lamw;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->f()Lcom/twitter/model/moments/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    .line 22
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v3, v0, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, v0, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    iget-boolean v0, v0, Lcom/twitter/model/moments/ad;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
