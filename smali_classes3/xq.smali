.class public Lxq;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lxo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lxs;

.field private c:Lcom/twitter/library/database/dm/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lxq;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lxq;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lxq;)Lcom/twitter/library/database/dm/d;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lxq;->c:Lcom/twitter/library/database/dm/d;

    return-object v0
.end method

.method static synthetic c(Lxq;)Lxs;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lxq;->b:Lxs;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lxq;
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lxq;->a:Landroid/content/Context;

    .line 208
    return-object p0
.end method

.method public a(Lcom/twitter/library/database/dm/d;)Lxq;
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lxq;->c:Lcom/twitter/library/database/dm/d;

    .line 220
    return-object p0
.end method

.method public a(Lxs;)Lxq;
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lxq;->b:Lxs;

    .line 214
    return-object p0
.end method

.method protected b()Lxo;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lxo;

    invoke-direct {v0, p0}, Lxo;-><init>(Lxq;)V

    return-object v0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/twitter/util/object/h;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxq;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxq;->b:Lxs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxq;->c:Lcom/twitter/library/database/dm/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lxq;->b()Lxo;

    move-result-object v0

    return-object v0
.end method
