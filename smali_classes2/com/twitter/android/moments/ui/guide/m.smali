.class public Lcom/twitter/android/moments/ui/guide/m;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Landroid/widget/ListView;

.field private final c:Lcom/twitter/android/moments/ui/guide/aa;

.field private final d:Lahi;

.field private final e:Lcom/twitter/android/moments/ui/guide/h;

.field private final f:Lcom/twitter/android/moments/ui/guide/s;

.field private final g:Lcom/twitter/android/moments/data/q;

.field private final h:Lcom/twitter/android/moments/data/q;

.field private final i:Lcom/twitter/android/moments/data/ae;

.field private final j:Lcom/twitter/android/moments/ui/guide/f;

.field private final k:Lcom/twitter/android/moments/ui/guide/ah;

.field private final l:Lama;

.field private final m:Landroid/content/Context;

.field private final n:Lcom/twitter/android/moments/viewmodels/m;

.field private final o:Lcom/twitter/android/moments/data/l;

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/viewmodels/v;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/twitter/android/moments/data/bo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/twitter/android/moments/data/l;Lcom/twitter/android/moments/ui/guide/aa;Landroid/widget/ListView;Lahi;Lcom/twitter/android/moments/ui/guide/h;Lcom/twitter/android/moments/ui/guide/s;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lcom/twitter/android/moments/data/bo;ZLcom/twitter/android/moments/ui/guide/f;Lama;Lcom/twitter/android/av/t;Lcom/twitter/android/moments/viewmodels/m;Lcom/twitter/android/moments/ui/guide/q;Lalp;Lcom/twitter/app/common/inject/o;)V
    .locals 18

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v2, Lcom/twitter/android/moments/ui/guide/n;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/twitter/android/moments/ui/guide/n;-><init>(Lcom/twitter/android/moments/ui/guide/m;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/guide/m;->q:Lcom/twitter/util/y;

    .line 95
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->m:Landroid/content/Context;

    .line 96
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->n:Lcom/twitter/android/moments/viewmodels/m;

    .line 97
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->a:Landroid/view/LayoutInflater;

    .line 98
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->b:Landroid/widget/ListView;

    .line 99
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->c:Lcom/twitter/android/moments/ui/guide/aa;

    .line 100
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->d:Lahi;

    .line 101
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->e:Lcom/twitter/android/moments/ui/guide/h;

    .line 102
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->f:Lcom/twitter/android/moments/ui/guide/s;

    .line 103
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->g:Lcom/twitter/android/moments/data/q;

    .line 104
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->h:Lcom/twitter/android/moments/data/q;

    .line 105
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->i:Lcom/twitter/android/moments/data/ae;

    .line 106
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->r:Lcom/twitter/android/moments/data/bo;

    .line 107
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->j:Lcom/twitter/android/moments/ui/guide/f;

    .line 108
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->o:Lcom/twitter/android/moments/data/l;

    .line 109
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/guide/m;->p:Ljava/util/Set;

    .line 111
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/moments/ui/guide/m;->l:Lama;

    .line 113
    if-eqz p13, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/m;->b:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/m;->b:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/guide/m;->l:Lama;

    invoke-virtual {v3}, Lama;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 117
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/m;->f:Lcom/twitter/android/moments/ui/guide/s;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/twitter/android/moments/ui/guide/s;->b(Z)V

    .line 118
    new-instance v2, Lcom/twitter/android/moments/ui/guide/o;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/twitter/android/moments/ui/guide/o;-><init>(Lcom/twitter/android/moments/ui/guide/m;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/ui/guide/aa;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 135
    new-instance v2, Lcom/twitter/android/moments/ui/guide/p;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/twitter/android/moments/ui/guide/p;-><init>(Lcom/twitter/android/moments/ui/guide/m;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/ui/guide/aa;->a(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v2, Lcom/twitter/android/moments/ui/guide/ah;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/guide/m;->m:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/moments/ui/guide/m;->f:Lcom/twitter/android/moments/ui/guide/s;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/moments/ui/guide/m;->a:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/moments/ui/guide/m;->d:Lahi;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/moments/ui/guide/m;->g:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/moments/ui/guide/m;->h:Lcom/twitter/android/moments/data/q;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/moments/ui/guide/m;->i:Lcom/twitter/android/moments/data/ae;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/moments/ui/guide/m;->r:Lcom/twitter/android/moments/data/bo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/moments/ui/guide/m;->j:Lcom/twitter/android/moments/ui/guide/f;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/moments/ui/guide/m;->p:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/moments/ui/guide/m;->e:Lcom/twitter/android/moments/ui/guide/h;

    move-object/from16 v7, p16

    move-object/from16 v15, p19

    move-object/from16 v16, p20

    move-object/from16 v17, p18

    invoke-direct/range {v2 .. v17}, Lcom/twitter/android/moments/ui/guide/ah;-><init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/guide/s;Landroid/view/LayoutInflater;Lahi;Lcom/twitter/android/av/t;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/q;Lcom/twitter/android/moments/data/ae;Lcom/twitter/android/moments/data/bo;Lcom/twitter/android/moments/ui/guide/f;Ljava/util/Set;Lcom/twitter/android/moments/ui/guide/h;Lalp;Lcom/twitter/app/common/inject/o;Lcom/twitter/android/moments/ui/guide/q;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/android/moments/ui/guide/m;->k:Lcom/twitter/android/moments/ui/guide/ah;

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/m;->c:Lcom/twitter/android/moments/ui/guide/aa;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/moments/ui/guide/m;->k:Lcom/twitter/android/moments/ui/guide/ah;

    invoke-virtual {v2, v3}, Lcom/twitter/android/moments/ui/guide/aa;->a(Lcom/twitter/android/moments/ui/guide/ah;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/moments/ui/guide/m;->q:Lcom/twitter/util/y;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/data/l;->a(Lcom/twitter/util/y;)V

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/ui/guide/aa;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->c:Lcom/twitter/android/moments/ui/guide/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/guide/m;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/guide/m;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentGuideSection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 190
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 191
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/MomentGuideSection;

    .line 192
    iget-object v3, p0, Lcom/twitter/android/moments/ui/guide/m;->n:Lcom/twitter/android/moments/viewmodels/m;

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v0, v1, v4}, Lcom/twitter/android/moments/viewmodels/m;->a(Lcom/twitter/android/moments/viewmodels/MomentGuideSection;II)Ljava/util/List;

    move-result-object v0

    .line 192
    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/m;->k:Lcom/twitter/android/moments/ui/guide/ah;

    new-instance v3, Lcmo;

    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-direct {v3, v0}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v1, v3}, Lcom/twitter/android/moments/ui/guide/ah;->a(Lcmf;)Lcmf;

    .line 196
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/guide/m;)Lahi;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->d:Lahi;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/data/q;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->g:Lcom/twitter/android/moments/data/q;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/data/q;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->h:Lcom/twitter/android/moments/data/q;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/data/l;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->o:Lcom/twitter/android/moments/data/l;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/moments/ui/guide/m;)Lcom/twitter/android/moments/ui/guide/s;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->f:Lcom/twitter/android/moments/ui/guide/s;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 178
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 179
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 181
    instance-of v3, v0, Lcom/twitter/android/moments/ui/guide/z;

    if-eqz v3, :cond_0

    .line 182
    check-cast v0, Lcom/twitter/android/moments/ui/guide/z;

    .line 183
    invoke-interface {v0}, Lcom/twitter/android/moments/ui/guide/z;->c()V

    .line 178
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 186
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->e:Lcom/twitter/android/moments/ui/guide/h;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/h;->a()V

    .line 155
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/m;->l:Lama;

    invoke-virtual {v1}, Lama;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 173
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/m;->o:Lcom/twitter/android/moments/data/l;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/m;->q:Lcom/twitter/util/y;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/moments/data/l;->a(Lcom/twitter/util/y;Z)V

    .line 174
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->f:Lcom/twitter/android/moments/ui/guide/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/s;->b(Z)V

    .line 162
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->f:Lcom/twitter/android/moments/ui/guide/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/s;->b(Z)V

    .line 166
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->f:Lcom/twitter/android/moments/ui/guide/s;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/s;->a()V

    .line 167
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->d:Lahi;

    invoke-virtual {v0}, Lahi;->a()V

    .line 168
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/m;->g()V

    .line 169
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->o:Lcom/twitter/android/moments/data/l;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/l;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->c:Lcom/twitter/android/moments/ui/guide/aa;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->c:Lcom/twitter/android/moments/ui/guide/aa;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/aa;->c()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->o:Lcom/twitter/android/moments/data/l;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/l;->c()Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->o:Lcom/twitter/android/moments/data/l;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/l;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->c:Lcom/twitter/android/moments/ui/guide/aa;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/aa;->f()V

    .line 217
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/m;->o:Lcom/twitter/android/moments/data/l;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/l;->d()V

    .line 219
    :cond_0
    return-void
.end method
