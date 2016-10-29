.class public Lcom/twitter/android/moments/ui/maker/az;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/bb;

.field private final b:Laue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laue",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/android/moments/data/maker/h;

.field private final d:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/bb;Laue;Lcom/twitter/android/moments/data/maker/h;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/bb;",
            "Laue",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;>;",
            "Lcom/twitter/android/moments/data/maker/h;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/az;->a:Lcom/twitter/android/moments/ui/maker/bb;

    .line 48
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/az;->b:Laue;

    .line 49
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/az;->c:Lcom/twitter/android/moments/data/maker/h;

    .line 50
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/az;->d:Ljava/lang/Long;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/az;)Laue;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/az;->b:Laue;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/bb;Ljava/lang/Long;)Lcom/twitter/android/moments/ui/maker/az;
    .locals 6

    .prologue
    .line 34
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 35
    new-instance v1, Lcet;

    .line 36
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v1, p0, v2, v4, v5}, Lcet;-><init>(Landroid/content/Context;Lcom/twitter/library/provider/dm;J)V

    .line 37
    new-instance v2, Lcom/twitter/android/moments/data/maker/h;

    new-instance v3, Lcom/twitter/library/api/moments/maker/e;

    invoke-direct {v3, p0, v0}, Lcom/twitter/library/api/moments/maker/e;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 39
    invoke-static {}, Lcom/twitter/android/moments/data/maker/m;->a()Lcom/twitter/android/moments/data/maker/m;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Lcom/twitter/android/moments/data/maker/h;-><init>(Lcet;Lcom/twitter/library/api/moments/maker/e;Lcom/twitter/android/moments/data/maker/m;)V

    .line 40
    new-instance v0, Lcom/twitter/android/moments/ui/maker/az;

    new-instance v1, Laue;

    new-instance v3, Lcom/twitter/android/moments/ui/guide/an;

    invoke-direct {v3}, Lcom/twitter/android/moments/ui/guide/an;-><init>()V

    invoke-direct {v1, p0, v3}, Laue;-><init>(Landroid/app/Activity;Laun;)V

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/twitter/android/moments/ui/maker/az;-><init>(Lcom/twitter/android/moments/ui/maker/bb;Laue;Lcom/twitter/android/moments/data/maker/h;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/twitter/model/moments/maker/f;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/f;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/az;->a:Lcom/twitter/android/moments/ui/maker/bb;

    .line 55
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/f;->a(Ljava/lang/String;)Lcom/twitter/model/moments/maker/f;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/az;->a:Lcom/twitter/android/moments/ui/maker/bb;

    .line 56
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/bb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/f;->b(Ljava/lang/String;)Lcom/twitter/model/moments/maker/f;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/az;->d:Ljava/lang/Long;

    .line 57
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/f;->a(Ljava/lang/Long;)Lcom/twitter/model/moments/maker/f;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/f;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/e;

    .line 60
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/az;->c:Lcom/twitter/android/moments/data/maker/h;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/data/maker/h;->a(Lcom/twitter/model/moments/maker/e;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/ba;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/ba;-><init>(Lcom/twitter/android/moments/ui/maker/az;)V

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 66
    return-void
.end method
