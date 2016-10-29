.class public Ley;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Ldd;

.field private b:Lbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm",
            "<",
            "Lek;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldt;

.field private final d:Landroid/content/Context;

.field private e:Z

.field private f:Lbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm",
            "<",
            "Lek;",
            ">;"
        }
    .end annotation
.end field

.field private g:Les;

.field private h:Leh;

.field private i:Lcom/facebook/imagepipeline/decoder/a;

.field private j:Lbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/facebook/cache/disk/h;

.field private l:Lcom/facebook/common/memory/b;

.field private m:Lcom/facebook/imagepipeline/producers/bj;

.field private n:Lcom/facebook/imagepipeline/bitmaps/g;

.field private o:Lcom/facebook/imagepipeline/memory/x;

.field private p:Lcom/facebook/imagepipeline/decoder/c;

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lft;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/facebook/cache/disk/h;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Ley;->e:Z

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Ley;->r:Z

    .line 280
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Ley;->d:Landroid/content/Context;

    .line 281
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lew;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1}, Ley;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Ley;)Ldd;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->a:Ldd;

    return-object v0
.end method

.method static synthetic b(Ley;)Lbm;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->b:Lbm;

    return-object v0
.end method

.method static synthetic c(Ley;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Ley;)Ldt;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->c:Ldt;

    return-object v0
.end method

.method static synthetic e(Ley;)Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Ley;->e:Z

    return v0
.end method

.method static synthetic f(Ley;)Lbm;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->f:Lbm;

    return-object v0
.end method

.method static synthetic g(Ley;)Leh;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->h:Leh;

    return-object v0
.end method

.method static synthetic h(Ley;)Lcom/facebook/imagepipeline/decoder/a;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->i:Lcom/facebook/imagepipeline/decoder/a;

    return-object v0
.end method

.method static synthetic i(Ley;)Lbm;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->j:Lbm;

    return-object v0
.end method

.method static synthetic j(Ley;)Lcom/facebook/cache/disk/h;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->k:Lcom/facebook/cache/disk/h;

    return-object v0
.end method

.method static synthetic k(Ley;)Lcom/facebook/common/memory/b;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->l:Lcom/facebook/common/memory/b;

    return-object v0
.end method

.method static synthetic l(Ley;)Lcom/facebook/imagepipeline/producers/bj;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->m:Lcom/facebook/imagepipeline/producers/bj;

    return-object v0
.end method

.method static synthetic m(Ley;)Lcom/facebook/imagepipeline/bitmaps/g;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->n:Lcom/facebook/imagepipeline/bitmaps/g;

    return-object v0
.end method

.method static synthetic n(Ley;)Lcom/facebook/imagepipeline/memory/x;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->o:Lcom/facebook/imagepipeline/memory/x;

    return-object v0
.end method

.method static synthetic o(Ley;)Lcom/facebook/imagepipeline/decoder/c;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->p:Lcom/facebook/imagepipeline/decoder/c;

    return-object v0
.end method

.method static synthetic p(Ley;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->q:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic q(Ley;)Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Ley;->r:Z

    return v0
.end method

.method static synthetic r(Ley;)Lcom/facebook/cache/disk/h;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->s:Lcom/facebook/cache/disk/h;

    return-object v0
.end method

.method static synthetic s(Ley;)Les;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ley;->g:Les;

    return-object v0
.end method


# virtual methods
.method public a()Lev;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Lev;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lev;-><init>(Ley;Lew;)V

    return-object v0
.end method

.method public a(Lbm;)Ley;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm",
            "<",
            "Lek;",
            ">;)",
            "Ley;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm;

    iput-object v0, p0, Ley;->b:Lbm;

    .line 292
    return-object p0
.end method

.method public a(Lcom/facebook/cache/disk/h;)Ley;
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Ley;->k:Lcom/facebook/cache/disk/h;

    .line 334
    return-object p0
.end method

.method public a(Lcom/facebook/common/memory/b;)Ley;
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Ley;->l:Lcom/facebook/common/memory/b;

    .line 339
    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/bj;)Ley;
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Ley;->m:Lcom/facebook/imagepipeline/producers/bj;

    .line 344
    return-object p0
.end method

.method public a(Les;)Ley;
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Ley;->g:Les;

    .line 309
    return-object p0
.end method

.method public b(Lbm;)Ley;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm",
            "<",
            "Lek;",
            ">;)",
            "Ley;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm;

    iput-object v0, p0, Ley;->f:Lbm;

    .line 304
    return-object p0
.end method
