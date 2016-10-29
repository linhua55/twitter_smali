.class public Lcom/twitter/android/moments/ui/fullscreen/fu;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/data/z;

.field private final b:Ladw;

.field private final c:Lrx/subjects/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/k",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lrx/ap;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/z;Ladw;Lrx/subjects/k;J)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/data/z;",
            "Ladw;",
            "Lrx/subjects/k",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/fu;->a:Lcom/twitter/android/moments/data/z;

    .line 43
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/fu;->b:Ladw;

    .line 44
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/fu;->c:Lrx/subjects/k;

    .line 46
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fu;->a:Lcom/twitter/android/moments/data/z;

    invoke-virtual {v0, p4, p5}, Lcom/twitter/android/moments/data/z;->a(J)Lrx/o;

    move-result-object v0

    .line 47
    invoke-static {}, Ldcn;->b()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->k(Ldjj;)Lrx/o;

    move-result-object v0

    .line 48
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/fu;->e()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/fu;->c:Lrx/subjects/k;

    .line 49
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fu;->d:Lrx/ap;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/fu;)Ladw;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fu;->b:Ladw;

    return-object v0
.end method

.method public static a(Lcom/twitter/android/moments/data/z;Ladw;J)Lcom/twitter/android/moments/ui/fullscreen/fu;
    .locals 6

    .prologue
    .line 55
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/fu;

    .line 56
    invoke-static {}, Lrx/subjects/c;->q()Lrx/subjects/c;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/fullscreen/fu;-><init>(Lcom/twitter/android/moments/data/z;Ladw;Lrx/subjects/k;J)V

    .line 55
    return-object v0
.end method

.method static synthetic a(Ljava/util/List;)Ldjj;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/twitter/android/moments/ui/fullscreen/fu;->b(Ljava/util/List;)Ldjj;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            ">;)",
            "Ldjj",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/fw;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/fw;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic c()Ldjl;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/twitter/android/moments/ui/fullscreen/fu;->d()Ldjl;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ldjl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjl",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/fv;

    invoke-direct {v0}, Lcom/twitter/android/moments/ui/fullscreen/fv;-><init>()V

    return-object v0
.end method

.method private e()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Lcmf",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            ">;",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/fx;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/fx;-><init>(Lcom/twitter/android/moments/ui/fullscreen/fu;)V

    return-object v0
.end method


# virtual methods
.method public a()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fu;->c:Lrx/subjects/k;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fu;->d:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 69
    return-void
.end method
