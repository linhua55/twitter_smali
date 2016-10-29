.class public final Lcom/twitter/model/core/bd;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/core/bb;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/core/bd;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/twitter/model/core/bd;->a:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public a(Z)Lcom/twitter/model/core/bd;
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/twitter/model/core/bd;->c:Z

    .line 93
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/core/bd;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/twitter/model/core/bd;->b:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public b(Z)Lcom/twitter/model/core/bd;
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/twitter/model/core/bd;->d:Z

    .line 99
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/twitter/model/core/bd;->e()Lcom/twitter/model/core/bb;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/core/bb;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/twitter/model/core/bb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/core/bb;-><init>(Lcom/twitter/model/core/bd;Lcom/twitter/model/core/bc;)V

    return-object v0
.end method
