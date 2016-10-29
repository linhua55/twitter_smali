.class public Ltv/periscope/android/ui/love/n;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:I

.field private final b:Ltv/periscope/android/ui/love/m;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ltv/periscope/android/ui/love/HeartView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILtv/periscope/android/ui/love/m;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Ltv/periscope/android/ui/love/n;->a:I

    .line 24
    iput-object p2, p0, Ltv/periscope/android/ui/love/n;->b:Ltv/periscope/android/ui/love/m;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/love/n;->c:Ljava/util/Map;

    .line 26
    return-void
.end method

.method private b(I)Landroid/support/v4/util/Pools$Pool;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ltv/periscope/android/ui/love/HeartView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Ltv/periscope/android/ui/love/n;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pools$Pool;

    .line 31
    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    iget v1, p0, Ltv/periscope/android/ui/love/n;->a:I

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    .line 33
    iget-object v1, p0, Ltv/periscope/android/ui/love/n;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)Ltv/periscope/android/ui/love/HeartView;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/love/n;->b(I)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/love/HeartView;

    .line 42
    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Ltv/periscope/android/ui/love/n;->b:Ltv/periscope/android/ui/love/m;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/love/m;->a(I)Ltv/periscope/android/ui/love/HeartView;

    move-result-object v0

    .line 46
    :cond_0
    return-object v0
.end method

.method public a(Ltv/periscope/android/ui/love/HeartView;)Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Ltv/periscope/android/ui/love/n;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ltv/periscope/android/ui/love/HeartView;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pools$Pool;

    .line 51
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
