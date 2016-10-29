.class public Lcom/twitter/android/moments/ui/maker/aq;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/data/maker/a;

.field private final b:Lcom/twitter/android/moments/ui/maker/bo;

.field private final c:Laum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laum",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/bo;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/aq;->a:Lcom/twitter/android/moments/data/maker/a;

    .line 41
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/aq;->b:Lcom/twitter/android/moments/ui/maker/bo;

    .line 42
    new-instance v0, Lcom/twitter/android/moments/ui/maker/ar;

    invoke-direct {v0, p0, p3}, Lcom/twitter/android/moments/ui/maker/ar;-><init>(Lcom/twitter/android/moments/ui/maker/aq;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/aq;->c:Laum;

    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aq;->b:Lcom/twitter/android/moments/ui/maker/bo;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/aq;->c:Laum;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/bo;->b(Laum;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/aq;)Lcom/twitter/android/moments/data/maker/a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aq;->a:Lcom/twitter/android/moments/data/maker/a;

    return-object v0
.end method

.method public static a(Laui;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/navigation/ao;)Lcom/twitter/android/moments/ui/maker/aq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laui",
            "<",
            "Lcom/twitter/android/moments/ui/maker/bp;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Landroid/net/Uri;",
            ">;>;",
            "Lcom/twitter/android/moments/data/maker/a;",
            "Lcom/twitter/android/moments/ui/maker/navigation/ao;",
            ")",
            "Lcom/twitter/android/moments/ui/maker/aq;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/android/moments/ui/maker/aq;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/bo;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/bo;-><init>(Laui;)V

    invoke-direct {v0, p1, v1, p2}, Lcom/twitter/android/moments/ui/maker/aq;-><init>(Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/bo;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/aq;)Lcom/twitter/android/moments/ui/maker/bo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aq;->b:Lcom/twitter/android/moments/ui/maker/bo;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aq;->b:Lcom/twitter/android/moments/ui/maker/bo;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/aq;->b:Lcom/twitter/android/moments/ui/maker/bo;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/bo;->a()Lcom/twitter/android/moments/ui/maker/bp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/bo;->a(Lcom/twitter/android/moments/ui/maker/bp;)V

    .line 60
    return-void
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcom/twitter/model/moments/maker/o;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/o;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/o;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/maker/o;

    move-result-object v1

    .line 65
    instance-of v0, p1, Lcom/twitter/model/moments/viewmodels/g;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/twitter/model/moments/viewmodels/g;

    invoke-interface {v0}, Lcom/twitter/model/moments/viewmodels/g;->c()Lcom/twitter/model/moments/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/maker/o;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/maker/o;

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/aq;->a:Lcom/twitter/android/moments/data/maker/a;

    new-instance v3, Lcom/twitter/model/moments/maker/l;

    invoke-direct {v3}, Lcom/twitter/model/moments/maker/l;-><init>()V

    .line 69
    invoke-virtual {v1}, Lcom/twitter/model/moments/maker/o;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/n;

    invoke-virtual {v3, v0}, Lcom/twitter/model/moments/maker/l;->a(Lcom/twitter/model/moments/maker/n;)Lcom/twitter/model/moments/maker/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twitter/model/moments/viewmodels/MomentPage;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 70
    invoke-static {v1}, Lcom/twitter/model/moments/viewmodels/m;->a([Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/moments/viewmodels/m;

    move-result-object v1

    .line 69
    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/model/moments/maker/w;Lcom/twitter/model/moments/viewmodels/m;)V

    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aq;->a:Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->c()Lrx/w;

    move-result-object v0

    invoke-virtual {v0}, Lrx/w;->a()Lrx/ap;

    .line 72
    return-void
.end method
