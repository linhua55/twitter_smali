.class public Lamj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final b:Lcom/twitter/android/moments/ui/maker/viewdelegate/m;

.field private final c:Lasp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasp",
            "<",
            "Lamy;",
            "Lasm",
            "<",
            "Lamy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Last;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Last",
            "<",
            "Lamy;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/android/moments/data/maker/a;

.field private f:Lrx/ap;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/viewdelegate/m;Lasp;Last;Lcom/twitter/android/moments/data/maker/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/navigation/ao;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/m;",
            "Lasp",
            "<",
            "Lamy;",
            "Lasm",
            "<",
            "Lamy;",
            ">;>;",
            "Last",
            "<",
            "Lamy;",
            ">;",
            "Lcom/twitter/android/moments/data/maker/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lamj;->a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 73
    iput-object p2, p0, Lamj;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/m;

    .line 74
    iput-object p3, p0, Lamj;->c:Lasp;

    .line 75
    iput-object p4, p0, Lamj;->d:Last;

    .line 76
    iput-object p5, p0, Lamj;->e:Lcom/twitter/android/moments/data/maker/a;

    .line 77
    iget-object v0, p0, Lamj;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/m;

    invoke-virtual {v0, p3}, Lcom/twitter/android/moments/ui/maker/viewdelegate/m;->a(Lasp;)V

    .line 78
    return-void
.end method

.method public static a(Lcom/twitter/app/common/base/BaseFragmentActivity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/aq;)Lamj;
    .locals 7

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/m;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/m;

    move-result-object v2

    .line 56
    new-instance v4, Last;

    .line 57
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Last;-><init>(Ljava/util/List;)V

    .line 58
    new-instance v0, Lamo;

    .line 59
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v3, Lcom/twitter/android/moments/ui/maker/bm;

    const/16 v5, 0x1b0

    .line 60
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v6

    invoke-direct {v3, v5, v6, p0}, Lcom/twitter/android/moments/ui/maker/bm;-><init>(ILcom/twitter/android/lb;Lcom/twitter/app/common/base/BaseFragmentActivity;)V

    invoke-direct {v0, v1, p2, p4, v3}, Lamo;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/aq;Lcom/twitter/android/moments/ui/maker/bm;)V

    .line 61
    new-instance v3, Lasp;

    new-instance v1, Laso;

    invoke-direct {v1, v4, v0}, Laso;-><init>(Lasr;Lasn;)V

    invoke-direct {v3, v1}, Lasp;-><init>(Laso;)V

    .line 64
    new-instance v0, Lamj;

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lamj;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/viewdelegate/m;Lasp;Last;Lcom/twitter/android/moments/data/maker/a;)V

    return-object v0
.end method

.method static synthetic a(Lamj;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lamj;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lamj;->d:Last;

    invoke-virtual {v0, p1}, Last;->a(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lamj;->c:Lasp;

    invoke-virtual {v0}, Lasp;->a()V

    .line 98
    return-void
.end method

.method static synthetic d()Ldjj;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lamj;->g()Ldjj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Ldjj;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lamj;->h()Ldjj;

    move-result-object v0

    return-object v0
.end method

.method private static f()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lamy;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Laml;

    invoke-direct {v0}, Laml;-><init>()V

    return-object v0
.end method

.method private static g()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            "Lamy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lamm;

    invoke-direct {v0}, Lamm;-><init>()V

    return-object v0
.end method

.method private static h()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lamn;

    invoke-direct {v0}, Lamn;-><init>()V

    return-object v0
.end method


# virtual methods
.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lamj;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/m;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/m;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lamj;->f:Lrx/ap;

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lamj;->e:Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->a()Lrx/o;

    move-result-object v0

    .line 86
    invoke-static {}, Lamj;->f()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lamk;

    invoke-direct {v1, p0}, Lamk;-><init>(Lamj;)V

    .line 87
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lamj;->f:Lrx/ap;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lamj;->f:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 102
    return-void
.end method
