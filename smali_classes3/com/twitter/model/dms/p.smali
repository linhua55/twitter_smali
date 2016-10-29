.class public abstract Lcom/twitter/model/dms/p;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/twitter/model/dms/p",
        "<TB;TD;>;D:",
        "Lcom/twitter/model/dms/n;",
        ">",
        "Lcom/twitter/util/object/h",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/twitter/model/core/bm;

.field private d:Lcom/twitter/model/dms/i;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/twitter/model/dms/n;)V
    .locals 2

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 346
    iget-wide v0, p1, Lcom/twitter/model/dms/n;->a:J

    iput-wide v0, p0, Lcom/twitter/model/dms/p;->a:J

    .line 347
    iget-object v0, p1, Lcom/twitter/model/dms/n;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/dms/p;->b:Ljava/lang/String;

    .line 348
    iget-object v0, p1, Lcom/twitter/model/dms/n;->c:Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/model/dms/p;->c:Lcom/twitter/model/core/bm;

    .line 349
    iget-object v0, p1, Lcom/twitter/model/dms/n;->d:Lcom/twitter/model/dms/i;

    iput-object v0, p0, Lcom/twitter/model/dms/p;->d:Lcom/twitter/model/dms/i;

    .line 350
    iget-object v0, p1, Lcom/twitter/model/dms/n;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/dms/p;->e:Ljava/lang/String;

    .line 351
    iget-boolean v0, p1, Lcom/twitter/model/dms/n;->f:Z

    iput-boolean v0, p0, Lcom/twitter/model/dms/p;->f:Z

    .line 352
    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/p;)J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/twitter/model/dms/p;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/twitter/model/dms/p;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/twitter/model/dms/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/model/dms/p;)Lcom/twitter/model/core/bm;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/twitter/model/dms/p;->c:Lcom/twitter/model/core/bm;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/model/dms/p;)Lcom/twitter/model/dms/i;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/twitter/model/dms/p;->d:Lcom/twitter/model/dms/i;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/model/dms/p;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/twitter/model/dms/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/model/dms/p;)Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/twitter/model/dms/p;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/twitter/model/dms/p;)Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/twitter/model/dms/p;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/twitter/model/dms/p;)I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/twitter/model/dms/p;->h:I

    return v0
.end method


# virtual methods
.method protected L_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    invoke-super {p0}, Lcom/twitter/util/object/h;->L_()V

    .line 357
    iget-object v0, p0, Lcom/twitter/model/dms/p;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/dms/p;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/twitter/model/dms/p;->b:Ljava/lang/String;

    invoke-static {v0}, Lczk;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/dms/p;->g:Z

    .line 359
    iget-object v0, p0, Lcom/twitter/model/dms/p;->b:Ljava/lang/String;

    invoke-static {v0}, Lczk;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/dms/p;->h:I

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_0
    iput-boolean v2, p0, Lcom/twitter/model/dms/p;->g:Z

    .line 362
    iput v2, p0, Lcom/twitter/model/dms/p;->h:I

    goto :goto_0
.end method

.method public a(I)Lcom/twitter/model/dms/p;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 339
    iput p1, p0, Lcom/twitter/model/dms/p;->h:I

    .line 340
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/p;

    return-object v0
.end method

.method public a(J)Lcom/twitter/model/dms/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 325
    iput-wide p1, p0, Lcom/twitter/model/dms/p;->a:J

    .line 326
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/p;

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/dms/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/bm;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 313
    iput-object p1, p0, Lcom/twitter/model/dms/p;->c:Lcom/twitter/model/core/bm;

    .line 314
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/p;

    return-object v0
.end method

.method public a(Lcom/twitter/model/dms/i;)Lcom/twitter/model/dms/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/dms/i;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 307
    iput-object p1, p0, Lcom/twitter/model/dms/p;->d:Lcom/twitter/model/dms/i;

    .line 308
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/p;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/dms/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 301
    iput-object p1, p0, Lcom/twitter/model/dms/p;->e:Ljava/lang/String;

    .line 302
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/p;

    return-object v0
.end method

.method public a(Z)Lcom/twitter/model/dms/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/twitter/model/dms/p;->f:Z

    .line 296
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/p;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/dms/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 319
    iput-object p1, p0, Lcom/twitter/model/dms/p;->b:Ljava/lang/String;

    .line 320
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/p;

    return-object v0
.end method

.method public b(Z)Lcom/twitter/model/dms/p;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/twitter/model/dms/p;->g:Z

    .line 333
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/p;

    return-object v0
.end method
