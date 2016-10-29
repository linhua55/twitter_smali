.class public Lcom/twitter/model/moments/maker/o;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/moments/maker/n;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/moments/ak;

.field b:Lcom/twitter/model/moments/k;

.field c:Lcom/twitter/model/moments/bd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/maker/o;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/twitter/model/moments/maker/o;->a:Lcom/twitter/model/moments/ak;

    .line 44
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/bd;)Lcom/twitter/model/moments/maker/o;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/model/moments/maker/o;->c:Lcom/twitter/model/moments/bd;

    .line 56
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/maker/o;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/twitter/model/moments/maker/o;->b:Lcom/twitter/model/moments/k;

    .line 50
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/o;->e()Lcom/twitter/model/moments/maker/n;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/maker/n;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/twitter/model/moments/maker/n;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/maker/n;-><init>(Lcom/twitter/model/moments/maker/o;)V

    return-object v0
.end method
