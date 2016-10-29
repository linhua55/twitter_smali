.class public Lff;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/content/res/Resources;

.field private c:Landroid/content/res/AssetManager;

.field private final d:Lcom/facebook/imagepipeline/memory/f;

.field private final e:Lcom/facebook/imagepipeline/decoder/a;

.field private final f:Lcom/facebook/imagepipeline/decoder/c;

.field private final g:Z

.field private final h:Z

.field private final i:Les;

.field private final j:Lcom/facebook/imagepipeline/memory/ab;

.field private final k:Ldo;

.field private final l:Ldo;

.field private final m:Lej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lfm;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ldt;

.field private final p:Lcom/facebook/imagepipeline/bitmaps/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/memory/f;Lcom/facebook/imagepipeline/decoder/a;Lcom/facebook/imagepipeline/decoder/c;ZZLes;Lcom/facebook/imagepipeline/memory/ab;Lej;Lej;Ldo;Ldo;Ldt;Lcom/facebook/imagepipeline/bitmaps/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/imagepipeline/memory/f;",
            "Lcom/facebook/imagepipeline/decoder/a;",
            "Lcom/facebook/imagepipeline/decoder/c;",
            "ZZ",
            "Les;",
            "Lcom/facebook/imagepipeline/memory/ab;",
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lfm;",
            ">;",
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Ldo;",
            "Ldo;",
            "Ldt;",
            "Lcom/facebook/imagepipeline/bitmaps/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lff;->a:Landroid/content/ContentResolver;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lff;->b:Landroid/content/res/Resources;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lff;->c:Landroid/content/res/AssetManager;

    .line 104
    iput-object p2, p0, Lff;->d:Lcom/facebook/imagepipeline/memory/f;

    .line 105
    iput-object p3, p0, Lff;->e:Lcom/facebook/imagepipeline/decoder/a;

    .line 106
    iput-object p4, p0, Lff;->f:Lcom/facebook/imagepipeline/decoder/c;

    .line 107
    iput-boolean p5, p0, Lff;->g:Z

    .line 108
    iput-boolean p6, p0, Lff;->h:Z

    .line 110
    iput-object p7, p0, Lff;->i:Les;

    .line 111
    iput-object p8, p0, Lff;->j:Lcom/facebook/imagepipeline/memory/ab;

    .line 113
    iput-object p9, p0, Lff;->n:Lej;

    .line 114
    iput-object p10, p0, Lff;->m:Lej;

    .line 115
    iput-object p11, p0, Lff;->k:Ldo;

    .line 116
    iput-object p12, p0, Lff;->l:Ldo;

    .line 117
    iput-object p13, p0, Lff;->o:Ldt;

    .line 119
    iput-object p14, p0, Lff;->p:Lcom/facebook/imagepipeline/bitmaps/g;

    .line 120
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lfo;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/a;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/facebook/imagepipeline/producers/a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/a;-><init>(Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/bw;Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lfo;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lfo;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/l;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/facebook/imagepipeline/producers/l;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/l;-><init>(Lcom/facebook/imagepipeline/producers/bw;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/bj;)Lcom/facebook/imagepipeline/producers/bh;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lcom/facebook/imagepipeline/producers/bh;

    iget-object v1, p0, Lff;->j:Lcom/facebook/imagepipeline/memory/ab;

    iget-object v2, p0, Lff;->d:Lcom/facebook/imagepipeline/memory/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/bh;-><init>(Lcom/facebook/imagepipeline/memory/ab;Lcom/facebook/imagepipeline/memory/f;Lcom/facebook/imagepipeline/producers/bj;)V

    return-object v0
.end method

.method public a(ILcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/cj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<TT;>;)",
            "Lcom/facebook/imagepipeline/producers/cj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lcom/facebook/imagepipeline/producers/cj;

    iget-object v1, p0, Lff;->i:Les;

    invoke-interface {v1}, Les;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/facebook/imagepipeline/producers/cj;-><init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public a()Lcom/facebook/imagepipeline/producers/p;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/facebook/imagepipeline/producers/p;

    iget-object v1, p0, Lff;->j:Lcom/facebook/imagepipeline/memory/ab;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/memory/ab;)V

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/producers/ao;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Lcom/facebook/imagepipeline/producers/ao;

    iget-object v1, p0, Lff;->i:Les;

    invoke-interface {v1}, Les;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lff;->j:Lcom/facebook/imagepipeline/memory/ab;

    iget-object v3, p0, Lff;->c:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ao;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/ab;Landroid/content/res/AssetManager;)V

    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/h;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/facebook/imagepipeline/producers/h;

    iget-object v1, p0, Lff;->n:Lej;

    iget-object v2, p0, Lff;->o:Ldt;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/h;-><init>(Lej;Ldt;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/producers/ap;
    .locals 4

    .prologue
    .line 190
    new-instance v0, Lcom/facebook/imagepipeline/producers/ap;

    iget-object v1, p0, Lff;->i:Les;

    invoke-interface {v1}, Les;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lff;->j:Lcom/facebook/imagepipeline/memory/ab;

    iget-object v3, p0, Lff;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ap;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/ab;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/i;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/facebook/imagepipeline/producers/i;

    iget-object v1, p0, Lff;->o:Ldt;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/i;-><init>(Ldt;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/producers/aq;
    .locals 3

    .prologue
    .line 197
    new-instance v0, Lcom/facebook/imagepipeline/producers/aq;

    iget-object v1, p0, Lff;->i:Les;

    invoke-interface {v1}, Les;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lff;->j:Lcom/facebook/imagepipeline/memory/ab;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/aq;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/ab;)V

    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/j;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/facebook/imagepipeline/producers/j;

    iget-object v1, p0, Lff;->n:Lej;

    iget-object v2, p0, Lff;->o:Ldt;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/j;-><init>(Lej;Ldt;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/producers/aw;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Lcom/facebook/imagepipeline/producers/aw;

    iget-object v1, p0, Lff;->i:Les;

    invoke-interface {v1}, Les;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lff;->j:Lcom/facebook/imagepipeline/memory/ab;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/aw;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/ab;)V

    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/q;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lfo;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/q;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/facebook/imagepipeline/producers/q;

    iget-object v1, p0, Lff;->d:Lcom/facebook/imagepipeline/memory/f;

    iget-object v2, p0, Lff;->i:Les;

    invoke-interface {v2}, Les;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lff;->e:Lcom/facebook/imagepipeline/decoder/a;

    iget-object v4, p0, Lff;->f:Lcom/facebook/imagepipeline/decoder/c;

    iget-boolean v5, p0, Lff;->g:Z

    iget-boolean v6, p0, Lff;->h:Z

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/q;-><init>(Lcom/facebook/imagepipeline/memory/f;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/a;Lcom/facebook/imagepipeline/decoder/c;ZZLcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/producers/ax;
    .locals 4

    .prologue
    .line 209
    new-instance v0, Lcom/facebook/imagepipeline/producers/ax;

    iget-object v1, p0, Lff;->i:Les;

    invoke-interface {v1}, Les;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lff;->j:Lcom/facebook/imagepipeline/memory/ab;

    iget-object v3, p0, Lff;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ax;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/ab;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public f(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lfo;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/x;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/facebook/imagepipeline/producers/x;

    iget-object v1, p0, Lff;->k:Ldo;

    iget-object v2, p0, Lff;->l:Ldo;

    iget-object v3, p0, Lff;->o:Ldt;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/facebook/imagepipeline/producers/x;-><init>(Ldo;Ldo;Ldt;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public g(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lfo;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/ac;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/facebook/imagepipeline/producers/ac;

    iget-object v1, p0, Lff;->o:Ldt;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/ac;-><init>(Ldt;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/producers/ay;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/facebook/imagepipeline/producers/ay;

    iget-object v1, p0, Lff;->i:Les;

    invoke-interface {v1}, Les;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/ay;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public h(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/ad;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lfo;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/ad;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/facebook/imagepipeline/producers/ad;

    iget-object v1, p0, Lff;->m:Lej;

    iget-object v2, p0, Lff;->o:Ldt;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/ad;-><init>(Lej;Ldt;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public i(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/bl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/bl;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/facebook/imagepipeline/producers/bl;

    iget-object v1, p0, Lff;->n:Lej;

    iget-object v2, p0, Lff;->o:Ldt;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/bl;-><init>(Lej;Ldt;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public j(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/bo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/bo;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/facebook/imagepipeline/producers/bo;

    iget-object v1, p0, Lff;->p:Lcom/facebook/imagepipeline/bitmaps/g;

    iget-object v2, p0, Lff;->i:Les;

    invoke-interface {v2}, Les;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/producers/bo;-><init>(Lcom/facebook/imagepipeline/producers/bw;Lcom/facebook/imagepipeline/bitmaps/g;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public k(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/ca;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lfo;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/ca;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lcom/facebook/imagepipeline/producers/ca;

    iget-object v1, p0, Lff;->i:Les;

    invoke-interface {v1}, Les;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lff;->j:Lcom/facebook/imagepipeline/memory/ab;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/ca;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/ab;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public l(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/cg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<TT;>;)",
            "Lcom/facebook/imagepipeline/producers/cg",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/facebook/imagepipeline/producers/cg;

    iget-object v1, p0, Lff;->i:Les;

    invoke-interface {v1}, Les;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/cg;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method

.method public m(Lcom/facebook/imagepipeline/producers/bw;)Lcom/facebook/imagepipeline/producers/cn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<",
            "Lfo;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/cn;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/facebook/imagepipeline/producers/cn;

    iget-object v1, p0, Lff;->i:Les;

    invoke-interface {v1}, Les;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lff;->j:Lcom/facebook/imagepipeline/memory/ab;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/cn;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/ab;Lcom/facebook/imagepipeline/producers/bw;)V

    return-object v0
.end method
