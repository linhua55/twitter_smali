.class Lcom/twitter/util/math/e;
.super Lcom/twitter/util/serialization/am;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/am",
        "<",
        "Lcom/twitter/util/math/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/twitter/util/serialization/am;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/util/math/d;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/twitter/util/math/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/util/math/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget v0, p2, Lcom/twitter/util/math/c;->d:F

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/util/math/c;->e:F

    .line 204
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/util/math/c;->f:F

    .line 205
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/util/math/c;->g:F

    .line 206
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    .line 207
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
    .line 199
    check-cast p2, Lcom/twitter/util/math/c;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/math/e;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/util/math/c;)V

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
    .line 199
    invoke-virtual {p0, p1}, Lcom/twitter/util/math/e;->b(Lcom/twitter/util/serialization/aj;)Lcom/twitter/util/math/c;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/twitter/util/serialization/aj;)Lcom/twitter/util/math/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lcom/twitter/util/math/c;

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v1

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v2

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v3

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/util/math/c;-><init>(FFFFLcom/twitter/util/math/d;)V

    return-object v0
.end method
