.class public Lcom/twitter/android/moments/ui/maker/dp;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

.field private final b:Lcom/twitter/android/moments/ui/maker/cq;

.field private c:Lcom/twitter/model/moments/ak;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/v;Lcom/twitter/model/moments/ak;Lcom/twitter/android/moments/ui/maker/cq;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/dp;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

    .line 27
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/dp;->c:Lcom/twitter/model/moments/ak;

    .line 28
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/dp;->b:Lcom/twitter/android/moments/ui/maker/cq;

    .line 29
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dp;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->b()I

    move-result v0

    .line 45
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dp;->b:Lcom/twitter/android/moments/ui/maker/cq;

    .line 47
    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/cq;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    .line 48
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/dp;->c:Lcom/twitter/model/moments/ak;

    .line 50
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dp;->b:Lcom/twitter/android/moments/ui/maker/cq;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dp;->c:Lcom/twitter/model/moments/ak;

    .line 54
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ak;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/cq;->a(Lcom/twitter/model/moments/ak;)I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dp;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->c(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/twitter/model/moments/ak;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dp;->c:Lcom/twitter/model/moments/ak;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/dp;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/dp;->b()V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dp;->c:Lcom/twitter/model/moments/ak;

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/dp;->c:Lcom/twitter/model/moments/ak;

    .line 41
    return-void
.end method
