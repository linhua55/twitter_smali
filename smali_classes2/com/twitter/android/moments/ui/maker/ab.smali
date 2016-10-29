.class public Lcom/twitter/android/moments/ui/maker/ab;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

.field private final b:Lcom/twitter/android/moments/data/maker/a;

.field private final c:Lasp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasp",
            "<",
            "Lamu;",
            "Lasm",
            "<",
            "Lamu;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/android/moments/ui/maker/w;

.field private final e:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final f:Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

.field private final g:Lcom/twitter/android/moments/ui/maker/a;

.field private final h:Lcom/twitter/android/moments/ui/maker/dh;

.field private final i:Lcom/twitter/android/moments/ui/maker/cd;

.field private final j:Lcom/twitter/android/moments/ui/maker/dk;

.field private k:Lcom/twitter/model/moments/ak;

.field private l:Lrx/ap;

.field private m:Z


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/ak;Lcom/twitter/android/moments/ui/maker/viewdelegate/f;Lcom/twitter/android/moments/data/maker/a;Lasp;Lcom/twitter/android/moments/ui/maker/w;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/viewdelegate/e;Lcom/twitter/android/moments/ui/maker/a;Lcom/twitter/android/moments/ui/maker/dh;Lcom/twitter/android/moments/ui/maker/cd;Lcom/twitter/android/moments/ui/maker/dk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/ak;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/f;",
            "Lcom/twitter/android/moments/data/maker/a;",
            "Lasp",
            "<",
            "Lamu;",
            "Lasm",
            "<",
            "Lamu;",
            ">;>;",
            "Lcom/twitter/android/moments/ui/maker/w;",
            "Lcom/twitter/android/moments/ui/maker/navigation/ao;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/e;",
            "Lcom/twitter/android/moments/ui/maker/a;",
            "Lcom/twitter/android/moments/ui/maker/dh;",
            "Lcom/twitter/android/moments/ui/maker/cd;",
            "Lcom/twitter/android/moments/ui/maker/dk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/ab;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    .line 99
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/ab;->b:Lcom/twitter/android/moments/data/maker/a;

    .line 100
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/ab;->d:Lcom/twitter/android/moments/ui/maker/w;

    .line 101
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/ab;->e:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 102
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/ab;->c:Lasp;

    .line 103
    iput-object p9, p0, Lcom/twitter/android/moments/ui/maker/ab;->h:Lcom/twitter/android/moments/ui/maker/dh;

    .line 104
    iput-object p11, p0, Lcom/twitter/android/moments/ui/maker/ab;->j:Lcom/twitter/android/moments/ui/maker/dk;

    .line 105
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->c:Lasp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lasp;->a(Z)V

    .line 106
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/ab;->c:Lasp;

    invoke-virtual {v1}, Lasp;->b()Laso;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 107
    iput-object p7, p0, Lcom/twitter/android/moments/ui/maker/ab;->f:Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

    .line 108
    iput-object p8, p0, Lcom/twitter/android/moments/ui/maker/ab;->g:Lcom/twitter/android/moments/ui/maker/a;

    .line 109
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/ab;->f()V

    .line 110
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->f:Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->a()V

    .line 111
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ab;->k:Lcom/twitter/model/moments/ak;

    .line 112
    iput-object p10, p0, Lcom/twitter/android/moments/ui/maker/ab;->i:Lcom/twitter/android/moments/ui/maker/cd;

    .line 113
    return-void
.end method

.method public static a(Lcom/twitter/model/moments/ak;Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/viewdelegate/f;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/a;Lcom/twitter/android/moments/ui/maker/dh;)Lcom/twitter/android/moments/ui/maker/ab;
    .locals 12

    .prologue
    .line 69
    new-instance v0, Lcom/twitter/android/moments/ui/maker/ai;

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/ai;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;)V

    .line 74
    invoke-virtual {p2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->aK_()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->a(Landroid/view/View;)Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

    move-result-object v7

    .line 76
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/w;->a()Lcom/twitter/android/moments/ui/maker/w;

    move-result-object v5

    .line 77
    new-instance v4, Lasp;

    new-instance v1, Laso;

    invoke-direct {v1, v5, v0}, Laso;-><init>(Lasr;Lasn;)V

    invoke-direct {v4, v1}, Lasp;-><init>(Laso;)V

    .line 81
    new-instance v0, Lcom/twitter/android/moments/ui/maker/ab;

    .line 83
    invoke-static {p1}, Lcom/twitter/android/moments/ui/maker/cd;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/maker/cd;

    move-result-object v10

    .line 84
    invoke-static {p1, p3}, Lcom/twitter/android/moments/ui/maker/dk;->a(Landroid/app/Activity;Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/ui/maker/dk;

    move-result-object v11

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v11}, Lcom/twitter/android/moments/ui/maker/ab;-><init>(Lcom/twitter/model/moments/ak;Lcom/twitter/android/moments/ui/maker/viewdelegate/f;Lcom/twitter/android/moments/data/maker/a;Lasp;Lcom/twitter/android/moments/ui/maker/w;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/viewdelegate/e;Lcom/twitter/android/moments/ui/maker/a;Lcom/twitter/android/moments/ui/maker/dh;Lcom/twitter/android/moments/ui/maker/cd;Lcom/twitter/android/moments/ui/maker/dk;)V

    .line 81
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/ab;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/ab;->j()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/ab;Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/ab;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    return-void
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->f:Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->b()V

    .line 224
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->d:Lcom/twitter/android/moments/ui/maker/w;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/ab;->i:Lcom/twitter/android/moments/ui/maker/cd;

    invoke-static {v1, p1}, Lamu;->a(Lcom/twitter/android/moments/ui/maker/cd;Lcom/twitter/model/moments/viewmodels/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/w;->a(Ljava/util/List;)V

    .line 225
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->c:Lasp;

    invoke-virtual {v0}, Lasp;->a()V

    .line 226
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->m:Z

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->m:Z

    .line 228
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->k:Lcom/twitter/model/moments/ak;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/ab;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->a(I)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->a(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/ab;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/ab;->h()V

    return-void
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/maker/ab;)Lcom/twitter/android/moments/ui/maker/navigation/ao;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->e:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/ui/maker/ab;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/ab;->g()V

    return-void
.end method

.method static synthetic e(Lcom/twitter/android/moments/ui/maker/ab;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/ab;->i()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->f:Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/ac;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/ac;-><init>(Lcom/twitter/android/moments/ui/maker/ab;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->a(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->f:Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/ad;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/ad;-><init>(Lcom/twitter/android/moments/ui/maker/ab;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->b(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->f:Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/ae;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/ae;-><init>(Lcom/twitter/android/moments/ui/maker/ab;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->c(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->f:Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/af;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/af;-><init>(Lcom/twitter/android/moments/ui/maker/ab;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->d(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->f:Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/ag;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/ag;-><init>(Lcom/twitter/android/moments/ui/maker/ab;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->e(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->j:Lcom/twitter/android/moments/ui/maker/dk;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/ab;->k:Lcom/twitter/model/moments/ak;

    iget-object v1, v1, Lcom/twitter/model/moments/ak;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/moments/ui/maker/dk;->a(J)V

    .line 163
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->g:Lcom/twitter/android/moments/ui/maker/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/a;->a()V

    .line 167
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->h:Lcom/twitter/android/moments/ui/maker/dh;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/dh;->a()V

    .line 171
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->e:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    sget-object v1, Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;->b:Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/navigation/ab;

    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/ab;->e()Lcom/twitter/model/moments/ak;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twitter/android/moments/ui/maker/navigation/ab;-><init>(Lcom/twitter/model/moments/ak;)V

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a(Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;Lcom/twitter/android/moments/ui/maker/navigation/an;)V

    .line 175
    return-void
.end method

.method private k()I
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->d:Lcom/twitter/android/moments/ui/maker/w;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/ab;->k:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/w;->a(Lcom/twitter/model/moments/ak;)I

    move-result v0

    .line 238
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/ak;)V
    .locals 2

    .prologue
    .line 203
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ab;->k:Lcom/twitter/model/moments/ak;

    .line 204
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/ab;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->a(I)V

    .line 205
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->k:Lcom/twitter/model/moments/ak;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->d:Lcom/twitter/android/moments/ui/maker/w;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/ab;->k:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/ui/maker/w;->a(Lcom/twitter/model/moments/ak;)I

    move-result v0

    .line 118
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/ab;->d:Lcom/twitter/android/moments/ui/maker/w;

    invoke-virtual {v2, v0}, Lcom/twitter/android/moments/ui/maker/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamu;

    .line 119
    instance-of v2, v0, Lamv;

    if-eqz v2, :cond_2

    .line 120
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamv;

    .line 121
    iget-object v0, v0, Lamv;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->k()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 125
    :goto_0
    return v0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->l:Lrx/ap;

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->b:Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->a()Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/ah;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/ah;-><init>(Lcom/twitter/android/moments/ui/maker/ab;)V

    .line 189
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->l:Lrx/ap;

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->l:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 199
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->c()V

    .line 200
    return-void
.end method

.method public e()Lcom/twitter/model/moments/ak;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->b()I

    move-result v0

    .line 210
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/ab;->d:Lcom/twitter/android/moments/ui/maker/w;

    .line 212
    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamu;

    .line 213
    instance-of v1, v0, Lamv;

    if-eqz v1, :cond_1

    .line 214
    check-cast v0, Lamv;

    iget-object v0, v0, Lamv;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->k:Lcom/twitter/model/moments/ak;

    .line 219
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->k:Lcom/twitter/model/moments/ak;

    return-object v0

    .line 216
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/ab;->k:Lcom/twitter/model/moments/ak;

    goto :goto_0
.end method
