.class public Lzj;
.super Lwz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwz",
        "<",
        "Lcom/twitter/model/dms/l;",
        "Lxu;",
        "Lzj;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/twitter/android/dm/au;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lwz;-><init>()V

    return-void
.end method

.method static synthetic a(Lzj;)Lcom/twitter/android/dm/au;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lzj;->c:Lcom/twitter/android/dm/au;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/dm/au;)Lzj;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lzj;->c:Lcom/twitter/android/dm/au;

    .line 41
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lwz;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzj;->c:Lcom/twitter/android/dm/au;

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
    .line 34
    invoke-virtual {p0}, Lzj;->d()Lzh;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lzh;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lzh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzh;-><init>(Lzj;Lzi;)V

    return-object v0
.end method
