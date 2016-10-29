.class public Lze;
.super Lyl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyl",
        "<",
        "Lzg;",
        "Lze;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Z

.field private d:I

.field private e:Lcom/twitter/model/dms/ao;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lyl;-><init>()V

    return-void
.end method

.method static synthetic a(Lze;)Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lze;->c:Z

    return v0
.end method

.method static synthetic b(Lze;)Lcom/twitter/model/dms/ao;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lze;->e:Lcom/twitter/model/dms/ao;

    return-object v0
.end method

.method static synthetic c(Lze;)Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lze;->f:Z

    return v0
.end method

.method static synthetic d(Lze;)I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lze;->d:I

    return v0
.end method


# virtual methods
.method public a(I)Lze;
    .locals 0

    .prologue
    .line 332
    iput p1, p0, Lze;->d:I

    .line 333
    return-object p0
.end method

.method public a(Lcom/twitter/model/dms/ao;)Lze;
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lze;->e:Lcom/twitter/model/dms/ao;

    .line 339
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lze;->d()Lxz;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lxz;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Lzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzb;-><init>(Lze;Lzc;)V

    return-object v0
.end method

.method public e(Z)Lze;
    .locals 0

    .prologue
    .line 326
    iput-boolean p1, p0, Lze;->c:Z

    .line 327
    return-object p0
.end method

.method public f(Z)Lze;
    .locals 0

    .prologue
    .line 344
    iput-boolean p1, p0, Lze;->f:Z

    .line 345
    return-object p0
.end method
