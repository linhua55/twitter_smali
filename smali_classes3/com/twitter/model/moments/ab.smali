.class public Lcom/twitter/model/moments/ab;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/moments/z;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/moments/ab;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/twitter/model/moments/ab;->a:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/moments/ab;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/twitter/model/moments/ab;->b:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/moments/ab;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/twitter/model/moments/ab;->c:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/twitter/model/moments/ab;->e()Lcom/twitter/model/moments/z;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/model/moments/ab;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/twitter/model/moments/ab;->d:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method protected e()Lcom/twitter/model/moments/z;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/twitter/model/moments/z;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/z;-><init>(Lcom/twitter/model/moments/ab;)V

    return-object v0
.end method
