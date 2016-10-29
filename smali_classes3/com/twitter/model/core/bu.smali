.class Lcom/twitter/model/core/bu;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/bs;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/bt;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/model/core/bu;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/bs;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/twitter/model/core/bs;

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v1

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v2

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v3

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/model/core/bs;-><init>(FFFF)V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget v0, p2, Lcom/twitter/model/core/bs;->b:F

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/bs;->c:F

    .line 44
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/bs;->d:F

    .line 45
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/bs;->e:F

    .line 46
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    .line 47
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
    .line 39
    check-cast p2, Lcom/twitter/model/core/bs;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/bu;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bs;)V

    return-void
.end method

.method protected synthetic b(Lcom/twitter/util/serialization/aj;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/bu;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/bs;

    move-result-object v0

    return-object v0
.end method
