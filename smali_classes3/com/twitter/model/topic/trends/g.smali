.class Lcom/twitter/model/topic/trends/g;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/topic/trends/f;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/topic/trends/b;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/twitter/model/topic/trends/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/topic/trends/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/twitter/model/topic/trends/f;

    invoke-direct {v0}, Lcom/twitter/model/topic/trends/f;-><init>()V

    .line 201
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    iput v1, v0, Lcom/twitter/model/topic/trends/f;->b:I

    .line 202
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/twitter/model/topic/trends/f;->c:J

    .line 203
    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/topic/trends/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget v0, p2, Lcom/twitter/model/topic/trends/f;->b:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 193
    iget-wide v0, p2, Lcom/twitter/model/topic/trends/f;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    .line 194
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
    .line 188
    check-cast p2, Lcom/twitter/model/topic/trends/f;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/topic/trends/g;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/topic/trends/f;)V

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
    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/topic/trends/g;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/topic/trends/f;

    move-result-object v0

    return-object v0
.end method
