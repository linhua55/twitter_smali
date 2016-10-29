.class public final Lcom/twitter/model/core/bo;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/core/bm;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/model/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/model/core/m",
            "<",
            "Lcom/twitter/model/core/cx;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/twitter/model/core/ae;

.field final c:Lcom/twitter/model/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/model/core/m",
            "<",
            "Lcom/twitter/model/core/av;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/twitter/model/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/model/core/m",
            "<",
            "Lcom/twitter/model/core/q;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/twitter/model/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/model/core/m",
            "<",
            "Lcom/twitter/model/core/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 269
    new-instance v0, Lcom/twitter/model/core/m;

    invoke-direct {v0}, Lcom/twitter/model/core/m;-><init>()V

    iput-object v0, p0, Lcom/twitter/model/core/bo;->a:Lcom/twitter/model/core/m;

    .line 270
    new-instance v0, Lcom/twitter/model/core/ae;

    invoke-direct {v0}, Lcom/twitter/model/core/ae;-><init>()V

    iput-object v0, p0, Lcom/twitter/model/core/bo;->b:Lcom/twitter/model/core/ae;

    .line 271
    new-instance v0, Lcom/twitter/model/core/m;

    invoke-direct {v0}, Lcom/twitter/model/core/m;-><init>()V

    iput-object v0, p0, Lcom/twitter/model/core/bo;->c:Lcom/twitter/model/core/m;

    .line 272
    new-instance v0, Lcom/twitter/model/core/m;

    invoke-direct {v0}, Lcom/twitter/model/core/m;-><init>()V

    iput-object v0, p0, Lcom/twitter/model/core/bo;->d:Lcom/twitter/model/core/m;

    .line 273
    new-instance v0, Lcom/twitter/model/core/m;

    invoke-direct {v0}, Lcom/twitter/model/core/m;-><init>()V

    iput-object v0, p0, Lcom/twitter/model/core/bo;->e:Lcom/twitter/model/core/m;

    .line 274
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/bm;)V
    .locals 2

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 277
    new-instance v0, Lcom/twitter/model/core/m;

    iget-object v1, p1, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-direct {v0, v1}, Lcom/twitter/model/core/m;-><init>(Lcom/twitter/model/core/j;)V

    iput-object v0, p0, Lcom/twitter/model/core/bo;->a:Lcom/twitter/model/core/m;

    .line 278
    new-instance v0, Lcom/twitter/model/core/ae;

    iget-object v1, p1, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-direct {v0, v1}, Lcom/twitter/model/core/ae;-><init>(Lcom/twitter/model/core/ac;)V

    iput-object v0, p0, Lcom/twitter/model/core/bo;->b:Lcom/twitter/model/core/ae;

    .line 279
    new-instance v0, Lcom/twitter/model/core/m;

    iget-object v1, p1, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-direct {v0, v1}, Lcom/twitter/model/core/m;-><init>(Lcom/twitter/model/core/j;)V

    iput-object v0, p0, Lcom/twitter/model/core/bo;->c:Lcom/twitter/model/core/m;

    .line 280
    new-instance v0, Lcom/twitter/model/core/m;

    iget-object v1, p1, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-direct {v0, v1}, Lcom/twitter/model/core/m;-><init>(Lcom/twitter/model/core/j;)V

    iput-object v0, p0, Lcom/twitter/model/core/bo;->d:Lcom/twitter/model/core/m;

    .line 281
    new-instance v0, Lcom/twitter/model/core/m;

    iget-object v1, p1, Lcom/twitter/model/core/bm;->g:Lcom/twitter/model/core/j;

    invoke-direct {v0, v1}, Lcom/twitter/model/core/m;-><init>(Lcom/twitter/model/core/j;)V

    iput-object v0, p0, Lcom/twitter/model/core/bo;->e:Lcom/twitter/model/core/m;

    .line 282
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/model/core/bo;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/twitter/model/core/bo;->b:Lcom/twitter/model/core/ae;

    invoke-virtual {v0, p1}, Lcom/twitter/model/core/ae;->b(Lcom/twitter/model/core/e;)Lcom/twitter/model/core/l;

    .line 361
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/ac;)Lcom/twitter/model/core/bo;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/twitter/model/core/bo;->b:Lcom/twitter/model/core/ae;

    invoke-virtual {v0, p1}, Lcom/twitter/model/core/ae;->a(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/l;

    .line 349
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/cx;)Lcom/twitter/model/core/bo;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/twitter/model/core/bo;->a:Lcom/twitter/model/core/m;

    invoke-virtual {v0, p1}, Lcom/twitter/model/core/m;->a(Lcom/twitter/model/core/e;)Lcom/twitter/model/core/l;

    .line 337
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/cx;",
            ">;)",
            "Lcom/twitter/model/core/bo;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/twitter/model/core/bo;->a:Lcom/twitter/model/core/m;

    invoke-virtual {v0, p1}, Lcom/twitter/model/core/m;->a(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/l;

    .line 331
    return-object p0
.end method

.method public b(Lcom/twitter/model/core/cx;)Lcom/twitter/model/core/bo;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/twitter/model/core/bo;->a:Lcom/twitter/model/core/m;

    invoke-virtual {v0, p1}, Lcom/twitter/model/core/m;->b(Lcom/twitter/model/core/e;)Lcom/twitter/model/core/l;

    .line 343
    return-object p0
.end method

.method public b(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/av;",
            ">;)",
            "Lcom/twitter/model/core/bo;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/twitter/model/core/bo;->c:Lcom/twitter/model/core/m;

    invoke-virtual {v0, p1}, Lcom/twitter/model/core/m;->a(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/l;

    .line 367
    return-object p0
.end method

.method public c(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/q;",
            ">;)",
            "Lcom/twitter/model/core/bo;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/twitter/model/core/bo;->d:Lcom/twitter/model/core/m;

    invoke-virtual {v0, p1}, Lcom/twitter/model/core/m;->a(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/l;

    .line 385
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/twitter/model/core/bo;->g()Lcom/twitter/model/core/bm;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/b;",
            ">;)",
            "Lcom/twitter/model/core/bo;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/twitter/model/core/bo;->e:Lcom/twitter/model/core/m;

    invoke-virtual {v0, p1}, Lcom/twitter/model/core/m;->a(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/l;

    .line 403
    return-object p0
.end method

.method public e()Lcom/twitter/model/core/bo;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/twitter/model/core/bo;->a:Lcom/twitter/model/core/m;

    invoke-virtual {v0}, Lcom/twitter/model/core/m;->f()Lcom/twitter/model/core/l;

    .line 291
    iget-object v0, p0, Lcom/twitter/model/core/bo;->b:Lcom/twitter/model/core/ae;

    invoke-virtual {v0}, Lcom/twitter/model/core/ae;->f()Lcom/twitter/model/core/l;

    .line 292
    iget-object v0, p0, Lcom/twitter/model/core/bo;->c:Lcom/twitter/model/core/m;

    invoke-virtual {v0}, Lcom/twitter/model/core/m;->f()Lcom/twitter/model/core/l;

    .line 293
    iget-object v0, p0, Lcom/twitter/model/core/bo;->d:Lcom/twitter/model/core/m;

    invoke-virtual {v0}, Lcom/twitter/model/core/m;->f()Lcom/twitter/model/core/l;

    .line 294
    iget-object v0, p0, Lcom/twitter/model/core/bo;->e:Lcom/twitter/model/core/m;

    invoke-virtual {v0}, Lcom/twitter/model/core/m;->f()Lcom/twitter/model/core/l;

    .line 295
    return-object p0
.end method

.method public f()Lcom/twitter/model/core/bo;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/twitter/model/core/bo;->d:Lcom/twitter/model/core/m;

    invoke-virtual {v0}, Lcom/twitter/model/core/m;->f()Lcom/twitter/model/core/l;

    .line 319
    return-object p0
.end method

.method protected g()Lcom/twitter/model/core/bm;
    .locals 1

    .prologue
    .line 421
    new-instance v0, Lcom/twitter/model/core/bm;

    invoke-direct {v0, p0}, Lcom/twitter/model/core/bm;-><init>(Lcom/twitter/model/core/bo;)V

    return-object v0
.end method
