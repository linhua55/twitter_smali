.class public Lcom/twitter/android/moments/data/maker/h;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/api/moments/maker/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/a;",
            "Lcom/twitter/model/json/moments/maker/JsonCreateMomentResponse;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcet;

.field private final c:Lcom/twitter/android/moments/data/maker/m;


# direct methods
.method public constructor <init>(Lcet;Lcom/twitter/library/api/moments/maker/e;Lcom/twitter/android/moments/data/maker/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcet;",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/a;",
            "Lcom/twitter/model/json/moments/maker/JsonCreateMomentResponse;",
            "Lcom/twitter/model/core/cj;",
            ">;",
            "Lcom/twitter/android/moments/data/maker/m;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/twitter/android/moments/data/maker/h;->a:Lcom/twitter/library/api/moments/maker/e;

    .line 35
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/h;->b:Lcet;

    .line 36
    iput-object p3, p0, Lcom/twitter/android/moments/data/maker/h;->c:Lcom/twitter/android/moments/data/maker/m;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/maker/h;)Lcet;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/h;->b:Lcet;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/e;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/maker/e;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/h;->a:Lcom/twitter/library/api/moments/maker/e;

    new-instance v1, Lcom/twitter/library/api/moments/maker/a;

    invoke-direct {v1, p1}, Lcom/twitter/library/api/moments/maker/a;-><init>(Lcom/twitter/model/moments/maker/e;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/twitter/library/api/moments/maker/e;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 43
    invoke-static {}, Ldcn;->e()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/maker/l;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/maker/l;-><init>(Lcom/twitter/android/moments/data/maker/h;)V

    .line 44
    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/maker/k;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/maker/k;-><init>(Lcom/twitter/android/moments/data/maker/h;)V

    .line 51
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/h;->c:Lcom/twitter/android/moments/data/maker/m;

    iget-object v1, v1, Lcom/twitter/android/moments/data/maker/m;->a:Lrx/t;

    .line 58
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/maker/j;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/maker/j;-><init>(Lcom/twitter/android/moments/data/maker/h;)V

    .line 59
    invoke-virtual {v0, v1}, Lrx/o;->a(Ldjf;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/maker/i;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/maker/i;-><init>(Lcom/twitter/android/moments/data/maker/h;)V

    .line 65
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/h;->c:Lcom/twitter/android/moments/data/maker/m;

    iget-object v1, v1, Lcom/twitter/android/moments/data/maker/m;->b:Lrx/t;

    .line 72
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v1

    invoke-static {v1}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lrx/o;->f(Lrx/o;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
