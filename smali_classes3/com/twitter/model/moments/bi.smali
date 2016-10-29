.class Lcom/twitter/model/moments/bi;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/moments/bg;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/bh;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/twitter/model/moments/bi;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/moments/bg;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    .line 51
    sget-object v0, Lcom/twitter/model/moments/ad;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    .line 52
    new-instance v2, Lcom/twitter/model/moments/bg;

    invoke-direct {v2, v1, v0}, Lcom/twitter/model/moments/bg;-><init>(ILcom/twitter/model/moments/ad;)V

    return-object v2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/bg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget v0, p2, Lcom/twitter/model/moments/bg;->b:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/bg;->c:Lcom/twitter/model/moments/ad;

    sget-object v2, Lcom/twitter/model/moments/ad;->a:Lcom/twitter/util/serialization/ah;

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 44
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
    .line 38
    check-cast p2, Lcom/twitter/model/moments/bg;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/bi;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/bg;)V

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
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/bi;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/moments/bg;

    move-result-object v0

    return-object v0
.end method
