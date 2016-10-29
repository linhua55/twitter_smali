.class public Lev;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ldd;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm",
            "<",
            "Lek;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ldt;

.field private final d:Landroid/content/Context;

.field private final e:Z

.field private final f:Lbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm",
            "<",
            "Lek;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Les;

.field private final h:Leh;

.field private final i:Lcom/facebook/imagepipeline/decoder/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final j:Lbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/facebook/cache/disk/h;

.field private final l:Lcom/facebook/common/memory/b;

.field private final m:Lcom/facebook/imagepipeline/producers/bj;

.field private final n:Lcom/facebook/imagepipeline/bitmaps/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final o:Lcom/facebook/imagepipeline/memory/x;

.field private final p:Lcom/facebook/imagepipeline/decoder/c;

.field private final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lft;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Z

.field private final s:Lcom/facebook/cache/disk/h;


# direct methods
.method private constructor <init>(Ley;)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Ley;->a(Ley;)Ldd;

    move-result-object v0

    iput-object v0, p0, Lev;->a:Ldd;

    .line 89
    invoke-static {p1}, Ley;->b(Ley;)Lbm;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lea;

    invoke-static {p1}, Ley;->c(Ley;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {v1, v0}, Lea;-><init>(Landroid/app/ActivityManager;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lev;->b:Lbm;

    .line 94
    invoke-static {p1}, Ley;->d(Ley;)Ldt;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Leb;->a()Leb;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lev;->c:Ldt;

    .line 98
    invoke-static {p1}, Ley;->c(Ley;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lev;->d:Landroid/content/Context;

    .line 99
    invoke-static {p1}, Ley;->e(Ley;)Z

    move-result v0

    iput-boolean v0, p0, Lev;->e:Z

    .line 100
    invoke-static {p1}, Ley;->f(Ley;)Lbm;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lec;

    invoke-direct {v0}, Lec;-><init>()V

    :goto_2
    iput-object v0, p0, Lev;->f:Lbm;

    .line 104
    invoke-static {p1}, Ley;->g(Ley;)Leh;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Leo;->l()Leo;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lev;->h:Leh;

    .line 108
    invoke-static {p1}, Ley;->h(Ley;)Lcom/facebook/imagepipeline/decoder/a;

    move-result-object v0

    iput-object v0, p0, Lev;->i:Lcom/facebook/imagepipeline/decoder/a;

    .line 109
    invoke-static {p1}, Ley;->i(Ley;)Lbm;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lew;

    invoke-direct {v0, p0}, Lew;-><init>(Lev;)V

    :goto_4
    iput-object v0, p0, Lev;->j:Lbm;

    .line 118
    invoke-static {p1}, Ley;->j(Ley;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {p1}, Ley;->c(Ley;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lev;->b(Landroid/content/Context;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lev;->k:Lcom/facebook/cache/disk/h;

    .line 122
    invoke-static {p1}, Ley;->k(Ley;)Lcom/facebook/common/memory/b;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/facebook/common/memory/c;->a()Lcom/facebook/common/memory/c;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lev;->l:Lcom/facebook/common/memory/b;

    .line 126
    invoke-static {p1}, Ley;->l(Ley;)Lcom/facebook/imagepipeline/producers/bj;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/facebook/imagepipeline/producers/ag;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/producers/ag;-><init>()V

    :goto_7
    iput-object v0, p0, Lev;->m:Lcom/facebook/imagepipeline/producers/bj;

    .line 130
    invoke-static {p1}, Ley;->m(Ley;)Lcom/facebook/imagepipeline/bitmaps/g;

    move-result-object v0

    iput-object v0, p0, Lev;->n:Lcom/facebook/imagepipeline/bitmaps/g;

    .line 131
    invoke-static {p1}, Ley;->n(Ley;)Lcom/facebook/imagepipeline/memory/x;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/facebook/imagepipeline/memory/x;

    invoke-static {}, Lcom/facebook/imagepipeline/memory/u;->i()Lcom/facebook/imagepipeline/memory/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/w;->a()Lcom/facebook/imagepipeline/memory/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/x;-><init>(Lcom/facebook/imagepipeline/memory/u;)V

    :goto_8
    iput-object v0, p0, Lev;->o:Lcom/facebook/imagepipeline/memory/x;

    .line 135
    invoke-static {p1}, Ley;->o(Ley;)Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/facebook/imagepipeline/decoder/e;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/decoder/e;-><init>()V

    :goto_9
    iput-object v0, p0, Lev;->p:Lcom/facebook/imagepipeline/decoder/c;

    .line 139
    invoke-static {p1}, Ley;->p(Ley;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_a
    iput-object v0, p0, Lev;->q:Ljava/util/Set;

    .line 143
    invoke-static {p1}, Ley;->q(Ley;)Z

    move-result v0

    iput-boolean v0, p0, Lev;->r:Z

    .line 144
    invoke-static {p1}, Ley;->r(Ley;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lev;->k:Lcom/facebook/cache/disk/h;

    :goto_b
    iput-object v0, p0, Lev;->s:Lcom/facebook/cache/disk/h;

    .line 151
    iget-object v0, p0, Lev;->o:Lcom/facebook/imagepipeline/memory/x;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/x;->c()I

    move-result v1

    .line 152
    invoke-static {p1}, Ley;->s(Ley;)Les;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ler;

    invoke-direct {v0, v1}, Ler;-><init>(I)V

    :goto_c
    iput-object v0, p0, Lev;->g:Les;

    .line 155
    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Ley;->b(Ley;)Lbm;

    move-result-object v0

    goto/16 :goto_0

    .line 94
    :cond_1
    invoke-static {p1}, Ley;->d(Ley;)Ldt;

    move-result-object v0

    goto/16 :goto_1

    .line 100
    :cond_2
    invoke-static {p1}, Ley;->f(Ley;)Lbm;

    move-result-object v0

    goto/16 :goto_2

    .line 104
    :cond_3
    invoke-static {p1}, Ley;->g(Ley;)Leh;

    move-result-object v0

    goto/16 :goto_3

    .line 109
    :cond_4
    invoke-static {p1}, Ley;->i(Ley;)Lbm;

    move-result-object v0

    goto/16 :goto_4

    .line 118
    :cond_5
    invoke-static {p1}, Ley;->j(Ley;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    goto/16 :goto_5

    .line 122
    :cond_6
    invoke-static {p1}, Ley;->k(Ley;)Lcom/facebook/common/memory/b;

    move-result-object v0

    goto/16 :goto_6

    .line 126
    :cond_7
    invoke-static {p1}, Ley;->l(Ley;)Lcom/facebook/imagepipeline/producers/bj;

    move-result-object v0

    goto/16 :goto_7

    .line 131
    :cond_8
    invoke-static {p1}, Ley;->n(Ley;)Lcom/facebook/imagepipeline/memory/x;

    move-result-object v0

    goto :goto_8

    .line 135
    :cond_9
    invoke-static {p1}, Ley;->o(Ley;)Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v0

    goto :goto_9

    .line 139
    :cond_a
    invoke-static {p1}, Ley;->p(Ley;)Ljava/util/Set;

    move-result-object v0

    goto :goto_a

    .line 144
    :cond_b
    invoke-static {p1}, Ley;->r(Ley;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    goto :goto_b

    .line 152
    :cond_c
    invoke-static {p1}, Ley;->s(Ley;)Les;

    move-result-object v0

    goto :goto_c
.end method

.method synthetic constructor <init>(Ley;Lew;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lev;-><init>(Ley;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ley;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ley;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ley;-><init>(Landroid/content/Context;Lew;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/facebook/cache/disk/h;
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Lcom/facebook/cache/disk/h;->j()Lcom/facebook/cache/disk/j;

    move-result-object v0

    new-instance v1, Lex;

    invoke-direct {v1, p0}, Lex;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/facebook/cache/disk/j;->a(Lbm;)Lcom/facebook/cache/disk/j;

    move-result-object v0

    const-string/jumbo v1, "image_cache"

    invoke-virtual {v0, v1}, Lcom/facebook/cache/disk/j;->a(Ljava/lang/String;)Lcom/facebook/cache/disk/j;

    move-result-object v0

    const-wide/32 v2, 0x2800000

    invoke-virtual {v0, v2, v3}, Lcom/facebook/cache/disk/j;->a(J)Lcom/facebook/cache/disk/j;

    move-result-object v0

    const-wide/32 v2, 0xa00000

    invoke-virtual {v0, v2, v3}, Lcom/facebook/cache/disk/j;->b(J)Lcom/facebook/cache/disk/j;

    move-result-object v0

    const-wide/32 v2, 0x200000

    invoke-virtual {v0, v2, v3}, Lcom/facebook/cache/disk/j;->c(J)Lcom/facebook/cache/disk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/cache/disk/j;->a()Lcom/facebook/cache/disk/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ldd;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lev;->a:Ldd;

    return-object v0
.end method

.method public b()Lbm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm",
            "<",
            "Lek;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lev;->b:Lbm;

    return-object v0
.end method

.method public c()Ldt;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lev;->c:Ldt;

    return-object v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lev;->d:Landroid/content/Context;

    return-object v0
.end method

.method public e()Lbm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm",
            "<",
            "Lek;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lev;->f:Lbm;

    return-object v0
.end method

.method public f()Les;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lev;->g:Les;

    return-object v0
.end method

.method public g()Leh;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lev;->h:Leh;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/decoder/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lev;->i:Lcom/facebook/imagepipeline/decoder/a;

    return-object v0
.end method

.method public i()Lbm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lev;->j:Lbm;

    return-object v0
.end method

.method public j()Lcom/facebook/cache/disk/h;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lev;->k:Lcom/facebook/cache/disk/h;

    return-object v0
.end method

.method public k()Lcom/facebook/common/memory/b;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lev;->l:Lcom/facebook/common/memory/b;

    return-object v0
.end method

.method public l()Lcom/facebook/imagepipeline/producers/bj;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lev;->m:Lcom/facebook/imagepipeline/producers/bj;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lev;->e:Z

    return v0
.end method

.method public n()Lcom/facebook/imagepipeline/memory/x;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lev;->o:Lcom/facebook/imagepipeline/memory/x;

    return-object v0
.end method

.method public o()Lcom/facebook/imagepipeline/decoder/c;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lev;->p:Lcom/facebook/imagepipeline/decoder/c;

    return-object v0
.end method

.method public p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lft;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lev;->q:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lev;->r:Z

    return v0
.end method

.method public r()Lcom/facebook/cache/disk/h;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lev;->s:Lcom/facebook/cache/disk/h;

    return-object v0
.end method
