.class public Lcom/twitter/android/moments/ui/maker/by;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

.field private final b:Lcom/twitter/android/moments/data/maker/a;

.field private final c:Lcom/twitter/android/moments/ui/maker/cq;

.field private final d:Lasp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasp",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            "Lcom/twitter/android/moments/ui/maker/bt;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/android/moments/ui/maker/bx;

.field private final f:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private g:Lcom/twitter/android/moments/ui/maker/dp;

.field private h:Lrx/ap;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/dp;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/viewdelegate/v;Lasp;Lcom/twitter/android/moments/ui/maker/cq;Lcom/twitter/android/moments/ui/maker/bs;Lcom/twitter/android/moments/ui/maker/bx;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/dp;",
            "Lcom/twitter/android/moments/data/maker/a;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/v;",
            "Lasp",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            "Lcom/twitter/android/moments/ui/maker/bt;",
            ">;",
            "Lcom/twitter/android/moments/ui/maker/cq;",
            "Lcom/twitter/android/moments/ui/maker/bs;",
            "Lcom/twitter/android/moments/ui/maker/bx;",
            "Lcom/twitter/android/moments/ui/maker/navigation/ao;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/by;->b:Lcom/twitter/android/moments/data/maker/a;

    .line 84
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/by;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

    .line 85
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/by;->c:Lcom/twitter/android/moments/ui/maker/cq;

    .line 86
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/by;->d:Lasp;

    .line 87
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->d:Lasp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lasp;->a(Z)V

    .line 88
    iput-object p7, p0, Lcom/twitter/android/moments/ui/maker/by;->e:Lcom/twitter/android/moments/ui/maker/bx;

    .line 89
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

    invoke-virtual {p4}, Lasp;->b()Laso;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 90
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

    invoke-virtual {v0, p6}, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/s;)V

    .line 91
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/by;->g:Lcom/twitter/android/moments/ui/maker/dp;

    .line 92
    iput-object p8, p0, Lcom/twitter/android/moments/ui/maker/by;->f:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 93
    return-void
.end method

.method public static a(Lcom/twitter/model/moments/ak;Landroid/content/Context;Lcom/twitter/android/moments/ui/maker/viewdelegate/v;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/navigation/ao;)Lcom/twitter/android/moments/ui/maker/by;
    .locals 12

    .prologue
    .line 54
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/cq;->a()Lcom/twitter/android/moments/ui/maker/cq;

    move-result-object v8

    .line 56
    new-instance v4, Lcom/twitter/android/moments/ui/maker/dp;

    invoke-direct {v4, p2, p0, v8}, Lcom/twitter/android/moments/ui/maker/dp;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/v;Lcom/twitter/model/moments/ak;Lcom/twitter/android/moments/ui/maker/cq;)V

    .line 57
    new-instance v1, Lcom/twitter/android/moments/ui/maker/ca;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/moments/ui/maker/ca;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/dp;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;)V

    .line 62
    invoke-virtual {p2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->aK_()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lcom/twitter/android/moments/ui/maker/bx;->a(Landroid/view/View;Lcom/twitter/android/moments/ui/maker/navigation/ao;)Lcom/twitter/android/moments/ui/maker/bx;

    move-result-object v10

    .line 63
    new-instance v7, Lasp;

    new-instance v2, Laso;

    invoke-direct {v2, v8, v1}, Laso;-><init>(Lasr;Lasn;)V

    invoke-direct {v7, v2}, Lasp;-><init>(Laso;)V

    .line 67
    new-instance v9, Lcom/twitter/android/moments/ui/maker/bs;

    invoke-direct {v9, v7, v8, p3}, Lcom/twitter/android/moments/ui/maker/bs;-><init>(Lasp;Last;Lcom/twitter/android/moments/data/maker/a;)V

    .line 70
    new-instance v3, Lcom/twitter/android/moments/ui/maker/by;

    move-object v5, p3

    move-object v6, p2

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/twitter/android/moments/ui/maker/by;-><init>(Lcom/twitter/android/moments/ui/maker/dp;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/viewdelegate/v;Lasp;Lcom/twitter/android/moments/ui/maker/cq;Lcom/twitter/android/moments/ui/maker/bs;Lcom/twitter/android/moments/ui/maker/bx;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V

    return-object v3
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/by;Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/by;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    return-void
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->c:Lcom/twitter/android/moments/ui/maker/cq;

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/cq;->a(Ljava/util/List;)V

    .line 111
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->d:Lasp;

    invoke-virtual {v0}, Lasp;->a()V

    .line 112
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/maker/by;->i:Z

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/maker/by;->i:Z

    .line 114
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/by;->c:Lcom/twitter/android/moments/ui/maker/cq;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/by;->g:Lcom/twitter/android/moments/ui/maker/dp;

    .line 115
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/maker/dp;->a()Lcom/twitter/model/moments/ak;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/cq;->a(Lcom/twitter/model/moments/ak;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->a(I)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->h:Lrx/ap;

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->b:Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->a()Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/bz;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/bz;-><init>(Lcom/twitter/android/moments/ui/maker/by;)V

    .line 101
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->h:Lrx/ap;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->h:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 121
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->b:Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->c()Lrx/w;

    move-result-object v0

    invoke-virtual {v0}, Lrx/w;->a()Lrx/ap;

    .line 122
    return-void
.end method

.method public d()Lcom/twitter/model/moments/ak;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/by;->g:Lcom/twitter/android/moments/ui/maker/dp;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/dp;->a()Lcom/twitter/model/moments/ak;

    move-result-object v0

    return-object v0
.end method
