.class public Lez;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static a:Lez;


# instance fields
.field private final b:Lev;

.field private c:Ldg;

.field private d:Ldb;

.field private e:Ldd;

.field private f:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lfm;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lej;
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

.field private h:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lej;
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

.field private j:Ldo;

.field private k:Lcom/facebook/cache/disk/n;

.field private l:Lcom/facebook/imagepipeline/decoder/a;

.field private m:Let;

.field private n:Lcom/facebook/imagepipeline/bitmaps/g;

.field private o:Lff;

.field private p:Lfg;

.field private q:Ldo;

.field private r:Lcom/facebook/cache/disk/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lez;->a:Lez;

    return-void
.end method

.method public constructor <init>(Lev;)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lev;

    iput-object v0, p0, Lez;->b:Lev;

    .line 116
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/x;)Lcom/facebook/imagepipeline/bitmaps/g;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/e;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/bitmaps/e;-><init>()V

    .line 248
    :goto_0
    new-instance v2, Lcom/facebook/imagepipeline/bitmaps/b;

    new-instance v3, Lcom/facebook/imagepipeline/bitmaps/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/x;->e()Lcom/facebook/imagepipeline/memory/ab;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/imagepipeline/bitmaps/d;-><init>(Lcom/facebook/imagepipeline/memory/ab;)V

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/x;->b()Lcom/facebook/imagepipeline/memory/k;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/imagepipeline/bitmaps/b;-><init>(Lcom/facebook/imagepipeline/bitmaps/d;Lcom/facebook/imagepipeline/memory/k;)V

    .line 251
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/a;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/x;->a()Lcom/facebook/imagepipeline/memory/d;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/x;->c()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/facebook/imagepipeline/bitmaps/a;-><init>(Lcom/facebook/imagepipeline/memory/d;I)V

    .line 256
    :cond_0
    new-instance v3, Lcom/facebook/imagepipeline/bitmaps/g;

    invoke-direct {v3, v0, v2, v1}, Lcom/facebook/imagepipeline/bitmaps/g;-><init>(Lcom/facebook/imagepipeline/bitmaps/e;Lcom/facebook/imagepipeline/bitmaps/b;Lcom/facebook/imagepipeline/bitmaps/a;)V

    return-object v3

    :cond_1
    move-object v0, v1

    .line 245
    goto :goto_0
.end method

.method public static a(Ldg;Lcom/facebook/imagepipeline/bitmaps/g;)Ldd;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lfa;

    invoke-direct {v0, p0}, Lfa;-><init>(Ldg;)V

    .line 137
    new-instance v1, Ldd;

    invoke-direct {v1, v0, p1}, Ldd;-><init>(Lcom/facebook/imagepipeline/animated/impl/b;Lcom/facebook/imagepipeline/bitmaps/g;)V

    return-object v1
.end method

.method public static a()Lez;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lez;->a:Lez;

    const-string/jumbo v1, "ImagePipelineFactory was not initialized!"

    invoke-static {v0, v1}, Lbk;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lez;

    return-object v0
.end method

.method public static a(Lev;)V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lez;

    invoke-direct {v0, p0}, Lez;-><init>(Lev;)V

    sput-object v0, Lez;->a:Lez;

    .line 83
    return-void
.end method

.method private j()Ldg;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lez;->c:Ldg;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ldg;

    invoke-direct {v0}, Ldg;-><init>()V

    iput-object v0, p0, Lez;->c:Ldg;

    .line 124
    :cond_0
    iget-object v0, p0, Lez;->c:Ldg;

    return-object v0
.end method

.method private k()Ldd;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lez;->e:Ldd;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->a()Ldd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->a()Ldd;

    move-result-object v0

    iput-object v0, p0, Lez;->e:Ldd;

    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Lez;->e:Ldd;

    return-object v0

    .line 145
    :cond_1
    invoke-direct {p0}, Lez;->j()Ldg;

    move-result-object v0

    invoke-direct {p0}, Lez;->n()Lcom/facebook/imagepipeline/bitmaps/g;

    move-result-object v1

    invoke-static {v0, v1}, Lez;->a(Ldg;Lcom/facebook/imagepipeline/bitmaps/g;)Ldd;

    move-result-object v0

    iput-object v0, p0, Lez;->e:Ldd;

    goto :goto_0
.end method

.method private l()Lcom/facebook/imagepipeline/decoder/a;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lez;->l:Lcom/facebook/imagepipeline/decoder/a;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->h()Lcom/facebook/imagepipeline/decoder/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->h()Lcom/facebook/imagepipeline/decoder/a;

    move-result-object v0

    iput-object v0, p0, Lez;->l:Lcom/facebook/imagepipeline/decoder/a;

    .line 202
    :cond_0
    :goto_0
    iget-object v0, p0, Lez;->l:Lcom/facebook/imagepipeline/decoder/a;

    return-object v0

    .line 199
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/decoder/a;

    invoke-direct {p0}, Lez;->k()Ldd;

    move-result-object v1

    invoke-direct {p0}, Lez;->n()Lcom/facebook/imagepipeline/bitmaps/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Ldd;Lcom/facebook/imagepipeline/bitmaps/g;)V

    iput-object v0, p0, Lez;->l:Lcom/facebook/imagepipeline/decoder/a;

    goto :goto_0
.end method

.method private m()Ldo;
    .locals 7

    .prologue
    .line 206
    iget-object v0, p0, Lez;->j:Ldo;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ldo;

    invoke-virtual {p0}, Lez;->f()Lcom/facebook/cache/disk/n;

    move-result-object v1

    iget-object v2, p0, Lez;->b:Lev;

    invoke-virtual {v2}, Lev;->n()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/x;->e()Lcom/facebook/imagepipeline/memory/ab;

    move-result-object v2

    iget-object v3, p0, Lez;->b:Lev;

    invoke-virtual {v3}, Lev;->n()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/x;->f()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v3

    iget-object v4, p0, Lez;->b:Lev;

    invoke-virtual {v4}, Lev;->f()Les;

    move-result-object v4

    invoke-interface {v4}, Les;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v5, p0, Lez;->b:Lev;

    invoke-virtual {v5}, Lev;->f()Les;

    move-result-object v5

    invoke-interface {v5}, Les;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, p0, Lez;->b:Lev;

    invoke-virtual {v6}, Lev;->g()Leh;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Ldo;-><init>(Lcom/facebook/cache/disk/s;Lcom/facebook/imagepipeline/memory/ab;Lcom/facebook/imagepipeline/memory/ae;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Leh;)V

    iput-object v0, p0, Lez;->j:Ldo;

    .line 216
    :cond_0
    iget-object v0, p0, Lez;->j:Ldo;

    return-object v0
.end method

.method private n()Lcom/facebook/imagepipeline/bitmaps/g;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lez;->n:Lcom/facebook/imagepipeline/bitmaps/g;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->n()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v0

    invoke-static {v0}, Lez;->a(Lcom/facebook/imagepipeline/memory/x;)Lcom/facebook/imagepipeline/bitmaps/g;

    move-result-object v0

    iput-object v0, p0, Lez;->n:Lcom/facebook/imagepipeline/bitmaps/g;

    .line 264
    :cond_0
    iget-object v0, p0, Lez;->n:Lcom/facebook/imagepipeline/bitmaps/g;

    return-object v0
.end method

.method private o()Lff;
    .locals 15

    .prologue
    .line 268
    iget-object v0, p0, Lez;->o:Lff;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lff;

    iget-object v1, p0, Lez;->b:Lev;

    invoke-virtual {v1}, Lev;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lez;->b:Lev;

    invoke-virtual {v2}, Lev;->n()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/x;->g()Lcom/facebook/imagepipeline/memory/f;

    move-result-object v2

    invoke-direct {p0}, Lez;->l()Lcom/facebook/imagepipeline/decoder/a;

    move-result-object v3

    iget-object v4, p0, Lez;->b:Lev;

    invoke-virtual {v4}, Lev;->o()Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v4

    iget-object v5, p0, Lez;->b:Lev;

    invoke-virtual {v5}, Lev;->m()Z

    move-result v5

    iget-object v6, p0, Lez;->b:Lev;

    invoke-virtual {v6}, Lev;->q()Z

    move-result v6

    iget-object v7, p0, Lez;->b:Lev;

    invoke-virtual {v7}, Lev;->f()Les;

    move-result-object v7

    iget-object v8, p0, Lez;->b:Lev;

    invoke-virtual {v8}, Lev;->n()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/imagepipeline/memory/x;->e()Lcom/facebook/imagepipeline/memory/ab;

    move-result-object v8

    invoke-virtual {p0}, Lez;->c()Lej;

    move-result-object v9

    invoke-virtual {p0}, Lez;->e()Lej;

    move-result-object v10

    invoke-direct {p0}, Lez;->m()Ldo;

    move-result-object v11

    invoke-direct {p0}, Lez;->q()Ldo;

    move-result-object v12

    iget-object v13, p0, Lez;->b:Lev;

    invoke-virtual {v13}, Lev;->c()Ldt;

    move-result-object v13

    invoke-direct {p0}, Lez;->n()Lcom/facebook/imagepipeline/bitmaps/g;

    move-result-object v14

    invoke-direct/range {v0 .. v14}, Lff;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/memory/f;Lcom/facebook/imagepipeline/decoder/a;Lcom/facebook/imagepipeline/decoder/c;ZZLes;Lcom/facebook/imagepipeline/memory/ab;Lej;Lej;Ldo;Ldo;Ldt;Lcom/facebook/imagepipeline/bitmaps/g;)V

    iput-object v0, p0, Lez;->o:Lff;

    .line 286
    :cond_0
    iget-object v0, p0, Lez;->o:Lff;

    return-object v0
.end method

.method private p()Lfg;
    .locals 5

    .prologue
    .line 290
    iget-object v0, p0, Lez;->p:Lfg;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lfg;

    invoke-direct {p0}, Lez;->o()Lff;

    move-result-object v1

    iget-object v2, p0, Lez;->b:Lev;

    invoke-virtual {v2}, Lev;->l()Lcom/facebook/imagepipeline/producers/bj;

    move-result-object v2

    iget-object v3, p0, Lez;->b:Lev;

    invoke-virtual {v3}, Lev;->q()Z

    move-result v3

    iget-object v4, p0, Lez;->b:Lev;

    invoke-virtual {v4}, Lev;->m()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lfg;-><init>(Lff;Lcom/facebook/imagepipeline/producers/bj;ZZ)V

    iput-object v0, p0, Lez;->p:Lfg;

    .line 298
    :cond_0
    iget-object v0, p0, Lez;->p:Lfg;

    return-object v0
.end method

.method private q()Ldo;
    .locals 7

    .prologue
    .line 310
    iget-object v0, p0, Lez;->q:Ldo;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ldo;

    invoke-virtual {p0}, Lez;->h()Lcom/facebook/cache/disk/n;

    move-result-object v1

    iget-object v2, p0, Lez;->b:Lev;

    invoke-virtual {v2}, Lev;->n()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/x;->e()Lcom/facebook/imagepipeline/memory/ab;

    move-result-object v2

    iget-object v3, p0, Lez;->b:Lev;

    invoke-virtual {v3}, Lev;->n()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/x;->f()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v3

    iget-object v4, p0, Lez;->b:Lev;

    invoke-virtual {v4}, Lev;->f()Les;

    move-result-object v4

    invoke-interface {v4}, Les;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v5, p0, Lez;->b:Lev;

    invoke-virtual {v5}, Lev;->f()Les;

    move-result-object v5

    invoke-interface {v5}, Les;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, p0, Lez;->b:Lev;

    invoke-virtual {v6}, Lev;->g()Leh;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Ldo;-><init>(Lcom/facebook/cache/disk/s;Lcom/facebook/imagepipeline/memory/ab;Lcom/facebook/imagepipeline/memory/ae;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Leh;)V

    iput-object v0, p0, Lez;->q:Ldo;

    .line 320
    :cond_0
    iget-object v0, p0, Lez;->q:Ldo;

    return-object v0
.end method


# virtual methods
.method public b()Ldv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldv",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lfm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lez;->f:Ldv;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->b()Lbm;

    move-result-object v0

    iget-object v1, p0, Lez;->b:Lev;

    invoke-virtual {v1}, Lev;->k()Lcom/facebook/common/memory/b;

    move-result-object v1

    invoke-static {v0, v1}, Ldh;->a(Lbm;Lcom/facebook/common/memory/b;)Ldv;

    move-result-object v0

    iput-object v0, p0, Lez;->f:Ldv;

    .line 161
    :cond_0
    iget-object v0, p0, Lez;->f:Ldv;

    return-object v0
.end method

.method public c()Lej;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lfm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lez;->g:Lej;

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lez;->b()Ldv;

    move-result-object v0

    iget-object v1, p0, Lez;->b:Lev;

    invoke-virtual {v1}, Lev;->g()Leh;

    move-result-object v1

    invoke-static {v0, v1}, Ldj;->a(Ldv;Leh;)Lej;

    move-result-object v0

    iput-object v0, p0, Lez;->g:Lej;

    .line 171
    :cond_0
    iget-object v0, p0, Lez;->g:Lej;

    return-object v0
.end method

.method public d()Ldv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldv",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lez;->h:Ldv;

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->e()Lbm;

    move-result-object v0

    iget-object v1, p0, Lez;->b:Lev;

    invoke-virtual {v1}, Lev;->k()Lcom/facebook/common/memory/b;

    move-result-object v1

    invoke-static {v0, v1}, Led;->a(Lbm;Lcom/facebook/common/memory/b;)Ldv;

    move-result-object v0

    iput-object v0, p0, Lez;->h:Ldv;

    .line 181
    :cond_0
    iget-object v0, p0, Lez;->h:Ldv;

    return-object v0
.end method

.method public e()Lej;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lez;->i:Lej;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lez;->d()Ldv;

    move-result-object v0

    iget-object v1, p0, Lez;->b:Lev;

    invoke-virtual {v1}, Lev;->g()Leh;

    move-result-object v1

    invoke-static {v0, v1}, Lef;->a(Ldv;Leh;)Lej;

    move-result-object v0

    iput-object v0, p0, Lez;->i:Lej;

    .line 191
    :cond_0
    iget-object v0, p0, Lez;->i:Lej;

    return-object v0
.end method

.method public f()Lcom/facebook/cache/disk/n;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lez;->k:Lcom/facebook/cache/disk/n;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->j()Lcom/facebook/cache/disk/h;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/cache/disk/k;->a(Lcom/facebook/cache/disk/h;)Lcom/facebook/cache/disk/n;

    move-result-object v0

    iput-object v0, p0, Lez;->k:Lcom/facebook/cache/disk/n;

    .line 224
    :cond_0
    iget-object v0, p0, Lez;->k:Lcom/facebook/cache/disk/n;

    return-object v0
.end method

.method public g()Let;
    .locals 9

    .prologue
    .line 228
    iget-object v0, p0, Lez;->m:Let;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Let;

    invoke-direct {p0}, Lez;->p()Lfg;

    move-result-object v1

    iget-object v2, p0, Lez;->b:Lev;

    invoke-virtual {v2}, Lev;->p()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lez;->b:Lev;

    invoke-virtual {v3}, Lev;->i()Lbm;

    move-result-object v3

    invoke-virtual {p0}, Lez;->c()Lej;

    move-result-object v4

    invoke-virtual {p0}, Lez;->e()Lej;

    move-result-object v5

    invoke-direct {p0}, Lez;->m()Ldo;

    move-result-object v6

    invoke-direct {p0}, Lez;->q()Ldo;

    move-result-object v7

    iget-object v8, p0, Lez;->b:Lev;

    invoke-virtual {v8}, Lev;->c()Ldt;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Let;-><init>(Lfg;Ljava/util/Set;Lbm;Lej;Lej;Ldo;Ldo;Ldt;)V

    iput-object v0, p0, Lez;->m:Let;

    .line 240
    :cond_0
    iget-object v0, p0, Lez;->m:Let;

    return-object v0
.end method

.method public h()Lcom/facebook/cache/disk/n;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lez;->r:Lcom/facebook/cache/disk/n;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->r()Lcom/facebook/cache/disk/h;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/cache/disk/k;->a(Lcom/facebook/cache/disk/h;)Lcom/facebook/cache/disk/n;

    move-result-object v0

    iput-object v0, p0, Lez;->r:Lcom/facebook/cache/disk/n;

    .line 306
    :cond_0
    iget-object v0, p0, Lez;->r:Lcom/facebook/cache/disk/n;

    return-object v0
.end method

.method public i()Ldb;
    .locals 7

    .prologue
    .line 324
    iget-object v0, p0, Lez;->d:Ldb;

    if-nez v0, :cond_0

    .line 325
    invoke-direct {p0}, Lez;->j()Ldg;

    move-result-object v4

    .line 326
    invoke-static {}, Lbz;->a()Lbz;

    move-result-object v5

    .line 327
    new-instance v2, Lat;

    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->f()Les;

    move-result-object v0

    invoke-interface {v0}, Les;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {v2, v0}, Lat;-><init>(Ljava/util/concurrent/Executor;)V

    .line 329
    iget-object v0, p0, Lez;->b:Lev;

    invoke-virtual {v0}, Lev;->d()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 332
    new-instance v0, Lfb;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lfb;-><init>(Lez;Lax;Landroid/app/ActivityManager;Ldg;Lby;)V

    .line 348
    new-instance v2, Lfc;

    invoke-direct {v2, p0, v4}, Lfc;-><init>(Lez;Ldg;)V

    .line 355
    new-instance v1, Ldb;

    invoke-static {}, Laz;->b()Laz;

    move-result-object v5

    iget-object v3, p0, Lez;->b:Lev;

    invoke-virtual {v3}, Lev;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Ldb;-><init>(Lcom/facebook/imagepipeline/animated/impl/b;Lcom/facebook/imagepipeline/animated/impl/h;Ldg;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lez;->d:Ldb;

    .line 362
    :cond_0
    iget-object v0, p0, Lez;->d:Ldb;

    return-object v0
.end method
