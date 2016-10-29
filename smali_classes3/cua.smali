.class public Lcua;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcty;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lctj;

.field b:Lcto;

.field c:Lcub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lctj;)Lcua;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcua;->a:Lctj;

    .line 44
    return-object p0
.end method

.method public a(Lcto;)Lcua;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcua;->b:Lcto;

    .line 50
    return-object p0
.end method

.method public a(Lcub;)Lcua;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcua;->c:Lcub;

    .line 56
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcua;->c:Lcub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcua;->a:Lctj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcua;->b:Lcto;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcua;->e()Lcty;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcty;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcty;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcty;-><init>(Lcua;Lctz;)V

    return-object v0
.end method
