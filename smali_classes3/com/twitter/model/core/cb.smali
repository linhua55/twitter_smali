.class Lcom/twitter/model/core/cb;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/bz;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/ca;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/twitter/model/core/cb;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/bz;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->h()D

    move-result-wide v2

    .line 68
    new-instance v4, Lcom/twitter/model/core/bz;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/twitter/model/core/bz;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    return-object v4
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p2, Lcom/twitter/model/core/bz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/bz;->c:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/core/bz;->d:D

    .line 58
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(D)Lcom/twitter/util/serialization/ak;

    .line 59
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
    .line 52
    check-cast p2, Lcom/twitter/model/core/bz;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/cb;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bz;)V

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
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/cb;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/bz;

    move-result-object v0

    return-object v0
.end method
