.class Lcom/twitter/model/core/bh;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/bf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/bg;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/twitter/model/core/bh;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/bf;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    .line 77
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v4, Lcom/twitter/model/core/bf;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/twitter/model/core/bf;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v4
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p2, Lcom/twitter/model/core/bf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/core/bf;->c:J

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/bf;->d:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 69
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
    .line 62
    check-cast p2, Lcom/twitter/model/core/bf;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/bh;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bf;)V

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
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/bh;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/bf;

    move-result-object v0

    return-object v0
.end method
