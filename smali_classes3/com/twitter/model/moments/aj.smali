.class Lcom/twitter/model/moments/aj;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/moments/ah;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/ai;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/twitter/model/moments/aj;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/moments/ah;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v2, Lcom/twitter/model/moments/ah;

    sget-object v0, Lcom/twitter/model/moments/ad;->a:Lcom/twitter/util/serialization/ah;

    .line 36
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    sget-object v1, Lcqt;->a:Lcom/twitter/util/serialization/ah;

    .line 37
    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcqt;

    invoke-direct {v2, v0, v1}, Lcom/twitter/model/moments/ah;-><init>(Lcom/twitter/model/moments/ad;Lcqt;)V

    .line 35
    return-object v2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/ah;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p2, Lcom/twitter/model/moments/ah;->b:Lcom/twitter/model/moments/ad;

    sget-object v1, Lcom/twitter/model/moments/ad;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ah;->c:Lcqt;

    sget-object v2, Lcqt;->a:Lcom/twitter/util/serialization/ah;

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 29
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
    .line 23
    check-cast p2, Lcom/twitter/model/moments/ah;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/aj;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/ah;)V

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
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/aj;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/moments/ah;

    move-result-object v0

    return-object v0
.end method
