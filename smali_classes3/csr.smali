.class public final Lcsr;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcsp;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrx;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcsr;
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcsr;->b:I

    .line 65
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcsr;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcsr;->e:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcsr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcrx;",
            ">;)",
            "Lcsr;"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcsr;->d:Ljava/util/List;

    .line 77
    return-object p0
.end method

.method public a(Z)Lcsr;
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcsr;->a:Z

    .line 59
    return-object p0
.end method

.method public b(I)Lcsr;
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcsr;->c:I

    .line 71
    return-object p0
.end method

.method public bq_()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 101
    iget-object v0, p0, Lcsr;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcsr;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcsr;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcsr;->c:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Lcsr;
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcsr;->f:I

    .line 89
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcsr;->e()Lcsp;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcsp;
    .locals 8

    .prologue
    .line 95
    new-instance v0, Lcsp;

    iget-boolean v1, p0, Lcsr;->a:Z

    iget v2, p0, Lcsr;->b:I

    iget v3, p0, Lcsr;->c:I

    iget-object v4, p0, Lcsr;->d:Ljava/util/List;

    iget-object v5, p0, Lcsr;->e:Ljava/lang/String;

    iget v6, p0, Lcsr;->f:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcsp;-><init>(ZIILjava/util/List;Ljava/lang/String;ILcsq;)V

    return-object v0
.end method
