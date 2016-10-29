.class public Lcom/twitter/android/moments/ui/maker/cq;
.super Last;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Last",
        "<",
        "Lcom/twitter/model/moments/viewmodels/m;",
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
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;",
            "Lasv",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Last;-><init>(Ljava/util/List;Lasv;)V

    .line 39
    return-void
.end method

.method public static a()Lcom/twitter/android/moments/ui/maker/cq;
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/twitter/android/moments/ui/maker/cq;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/cr;

    invoke-direct {v2}, Lcom/twitter/android/moments/ui/maker/cr;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/moments/ui/maker/cq;-><init>(Ljava/util/List;Lasv;)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/ak;)I
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/twitter/android/moments/ui/maker/cs;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/ui/maker/cs;-><init>(Lcom/twitter/android/moments/ui/maker/cq;Lcom/twitter/model/moments/ak;)V

    invoke-static {p0, v0}, Lczz;->c(Ljava/lang/Iterable;Ldau;)I

    move-result v0

    .line 59
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
