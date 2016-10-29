.class Lcom/twitter/model/people/e;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/people/b;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/twitter/model/people/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/Tweet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/twitter/model/core/bl;

    invoke-direct {v0}, Lcom/twitter/model/core/bl;-><init>()V

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/bl;->g(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/bl;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/Tweet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-wide v0, p2, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    .line 78
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
    .line 74
    check-cast p2, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/people/e;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/Tweet;)V

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
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/people/e;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method
