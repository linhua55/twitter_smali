.class public Lbob;
.super Lbnp;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnp",
        "<",
        "Lbob;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Z

.field private d:Lcom/twitter/model/dms/cf;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lbnp;-><init>()V

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lbob;->e:I

    return-void
.end method

.method static synthetic a(Lbob;)Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lbob;->b:Z

    return v0
.end method

.method static synthetic b(Lbob;)Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lbob;->c:Z

    return v0
.end method

.method static synthetic c(Lbob;)Lcom/twitter/model/dms/cf;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lbob;->d:Lcom/twitter/model/dms/cf;

    return-object v0
.end method

.method static synthetic d(Lbob;)I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lbob;->e:I

    return v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/dms/cf;)Lbob;
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lbob;->d:Lcom/twitter/model/dms/cf;

    .line 323
    return-object p0
.end method

.method public b(Z)Lbob;
    .locals 0

    .prologue
    .line 310
    iput-boolean p1, p0, Lbob;->b:Z

    .line 311
    return-object p0
.end method

.method public bq_()Z
    .locals 2

    .prologue
    .line 334
    invoke-super {p0}, Lbnp;->bq_()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lbob;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbob;->d:Lcom/twitter/model/dms/cf;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Lbob;
    .locals 0

    .prologue
    .line 328
    iput p1, p0, Lbob;->e:I

    .line 329
    return-object p0
.end method

.method public c(Z)Lbob;
    .locals 0

    .prologue
    .line 316
    iput-boolean p1, p0, Lbob;->c:Z

    .line 317
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lbob;->e()Lboa;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lboa;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lboa;

    invoke-direct {v0, p0}, Lboa;-><init>(Lbob;)V

    return-object v0
.end method
