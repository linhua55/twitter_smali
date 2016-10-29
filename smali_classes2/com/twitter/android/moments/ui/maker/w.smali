.class public Lcom/twitter/android/moments/ui/maker/w;
.super Last;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Last",
        "<",
        "Lamu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lasv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamu;",
            ">;",
            "Lasv",
            "<",
            "Lamu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Last;-><init>(Ljava/util/List;Lasv;)V

    .line 40
    return-void
.end method

.method public static a()Lcom/twitter/android/moments/ui/maker/w;
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/twitter/android/moments/ui/maker/w;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/x;

    invoke-direct {v2}, Lcom/twitter/android/moments/ui/maker/x;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/moments/ui/maker/w;-><init>(Ljava/util/List;Lasv;)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/ak;)I
    .locals 2

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    const/4 v0, -0x1

    .line 51
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/twitter/model/moments/viewmodels/m;->g(Lcom/twitter/model/moments/ak;)Ldau;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/twitter/android/moments/ui/maker/y;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/moments/ui/maker/y;-><init>(Lcom/twitter/android/moments/ui/maker/w;Ldau;)V

    invoke-static {p0, v1}, Lczz;->c(Ljava/lang/Iterable;Ldau;)I

    move-result v0

    goto :goto_0
.end method
