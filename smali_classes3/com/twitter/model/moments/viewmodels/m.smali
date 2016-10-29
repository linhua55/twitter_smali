.class public Lcom/twitter/model/moments/viewmodels/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 33
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    .line 34
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/twitter/model/moments/ak;I)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/viewmodels/m;->f(Lcom/twitter/model/moments/ak;)I

    move-result v0

    add-int/2addr v0, p2

    .line 105
    iget-object v1, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a([Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/m;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/twitter/model/moments/viewmodels/m;

    invoke-static {p0}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/model/moments/viewmodels/m;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Ldau;)Ldau;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldau",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;)",
            "Ldau",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/twitter/model/moments/viewmodels/n;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/n;-><init>(Ldau;)V

    return-object v0
.end method

.method public static g(Lcom/twitter/model/moments/ak;)Ldau;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/ak;",
            ")",
            "Ldau",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->a(Lcom/twitter/model/moments/ak;)Ldau;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/moments/viewmodels/m;->a(Ldau;)Ldau;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 2

    .prologue
    .line 72
    invoke-static {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->a(Lcom/twitter/model/moments/ak;)Ldau;

    move-result-object v0

    invoke-static {p0, v0}, Lczz;->c(Ljava/lang/Iterable;Ldau;)I

    move-result v0

    .line 73
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/twitter/model/moments/MomentPageDisplayMode;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->h()Lcom/twitter/model/moments/MomentPageDisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/model/moments/ak;)Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/model/moments/ak;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/twitter/model/moments/ak;)Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/model/moments/ak;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/twitter/model/moments/viewmodels/m;->a(Lcom/twitter/model/moments/ak;I)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 91
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/twitter/model/moments/viewmodels/m;->a(Lcom/twitter/model/moments/ak;I)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 48
    if-ne p0, p1, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/twitter/model/moments/viewmodels/m;

    if-nez v0, :cond_1

    .line 52
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    check-cast p1, Lcom/twitter/model/moments/viewmodels/m;

    .line 56
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Lcom/twitter/model/moments/ak;)I
    .locals 1

    .prologue
    .line 99
    invoke-static {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->a(Lcom/twitter/model/moments/ak;)Ldau;

    move-result-object v0

    invoke-static {p0, v0}, Lczz;->c(Ljava/lang/Iterable;Ldau;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
