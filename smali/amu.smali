.class public abstract Lamu;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/android/moments/ui/maker/cd;Lcom/twitter/model/moments/viewmodels/a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/cd;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lamu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->c()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/cd;->b()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/twitter/model/moments/viewmodels/t;

    if-eqz v2, :cond_2

    .line 23
    :cond_0
    new-instance v2, Lana;

    instance-of v3, v0, Lcom/twitter/model/moments/viewmodels/t;

    if-eqz v3, :cond_1

    .line 25
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/t;

    :goto_0
    invoke-direct {v2, v0}, Lana;-><init>(Lcom/twitter/model/moments/viewmodels/t;)V

    .line 23
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_1
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    .line 31
    new-instance v3, Lamv;

    invoke-direct {v3, v0}, Lamv;-><init>(Lcom/twitter/model/moments/viewmodels/m;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_2
    new-instance v2, Lamw;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/twitter/model/moments/viewmodels/MomentPage;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/twitter/model/moments/viewmodels/m;->a([Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/m;

    move-result-object v0

    invoke-direct {v2, v0}, Lamw;-><init>(Lcom/twitter/model/moments/viewmodels/m;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_3
    return-object v1
.end method


# virtual methods
.method public abstract a()I
.end method
