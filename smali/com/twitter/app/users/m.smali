.class Lcom/twitter/app/users/m;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/app/users/l;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 365
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/twitter/app/users/m;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/users/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/twitter/app/users/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/app/users/m;)Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/twitter/app/users/m;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/twitter/app/users/m;)Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/twitter/app/users/m;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/twitter/app/users/m;)I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/twitter/app/users/m;->d:I

    return v0
.end method

.method static synthetic e(Lcom/twitter/app/users/m;)Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/twitter/app/users/m;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/twitter/app/users/m;)Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/twitter/app/users/m;->f:Z

    return v0
.end method


# virtual methods
.method public a(I)Lcom/twitter/app/users/m;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 392
    iput p1, p0, Lcom/twitter/app/users/m;->d:I

    .line 393
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/app/users/m;
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/twitter/app/users/m;->a:Ljava/lang/String;

    .line 375
    return-object p0
.end method

.method public a(Z)Lcom/twitter/app/users/m;
    .locals 0

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/twitter/app/users/m;->b:Z

    .line 381
    return-object p0
.end method

.method public b(Z)Lcom/twitter/app/users/m;
    .locals 0

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/twitter/app/users/m;->c:Z

    .line 387
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/twitter/app/users/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)Lcom/twitter/app/users/m;
    .locals 0

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/twitter/app/users/m;->e:Z

    .line 399
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/twitter/app/users/m;->e()Lcom/twitter/app/users/l;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Lcom/twitter/app/users/m;
    .locals 0

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/twitter/app/users/m;->f:Z

    .line 405
    return-object p0
.end method

.method protected e()Lcom/twitter/app/users/l;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Lcom/twitter/app/users/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/app/users/l;-><init>(Lcom/twitter/app/users/m;Lcom/twitter/app/users/k;)V

    return-object v0
.end method
