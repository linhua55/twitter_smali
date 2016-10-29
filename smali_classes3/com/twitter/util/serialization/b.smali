.class final Lcom/twitter/util/serialization/b;
.super Lcom/twitter/util/serialization/am;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/am",
        "<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/util/serialization/am;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/ak;Landroid/graphics/RectF;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    .line 19
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 20
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 21
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    .line 22
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    check-cast p2, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/serialization/b;->a(Lcom/twitter/util/serialization/ak;Landroid/graphics/RectF;)V

    return-void
.end method

.method protected synthetic a_(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/twitter/util/serialization/b;->b(Lcom/twitter/util/serialization/aj;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/twitter/util/serialization/aj;)Landroid/graphics/RectF;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v1

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v2

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v3

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method
