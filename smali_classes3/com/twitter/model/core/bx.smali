.class public Lcom/twitter/model/core/bx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/twitter/model/core/bv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/bv;Lcom/twitter/model/core/bv;)I
    .locals 4

    .prologue
    .line 51
    iget-object v0, p2, Lcom/twitter/model/core/bv;->d:Lcom/twitter/model/core/bz;

    iget-wide v0, v0, Lcom/twitter/model/core/bz;->d:D

    iget-object v2, p1, Lcom/twitter/model/core/bv;->d:Lcom/twitter/model/core/bz;

    iget-wide v2, v2, Lcom/twitter/model/core/bz;->d:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 48
    check-cast p1, Lcom/twitter/model/core/bv;

    check-cast p2, Lcom/twitter/model/core/bv;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/bx;->a(Lcom/twitter/model/core/bv;Lcom/twitter/model/core/bv;)I

    move-result v0

    return v0
.end method
