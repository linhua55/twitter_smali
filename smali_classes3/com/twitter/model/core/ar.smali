.class Lcom/twitter/model/core/ar;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/ap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/aq;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/model/core/ar;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/ap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v0

    .line 68
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v1

    .line 69
    sget-object v2, Lcom/twitter/model/core/as;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v2

    .line 71
    new-instance v3, Lcom/twitter/model/core/ap;

    invoke-direct {v3, v0, v1, v2}, Lcom/twitter/model/core/ap;-><init>(FFLjava/util/List;)V

    return-object v3
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/ap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget v0, p2, Lcom/twitter/model/core/ap;->b:F

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/ap;->c:F

    .line 59
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    .line 60
    iget-object v0, p2, Lcom/twitter/model/core/ap;->d:Ljava/util/List;

    sget-object v1, Lcom/twitter/model/core/as;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 61
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
    .line 54
    check-cast p2, Lcom/twitter/model/core/ap;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ar;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/ap;)V

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
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ar;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/ap;

    move-result-object v0

    return-object v0
.end method
