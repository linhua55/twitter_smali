.class Lcom/twitter/model/timeline/da;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/timeline/cx;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/cy;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/twitter/model/timeline/da;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/timeline/cx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    .line 126
    new-instance v1, Lcom/twitter/model/timeline/cz;

    invoke-direct {v1}, Lcom/twitter/model/timeline/cz;-><init>()V

    .line 127
    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/cz;->a(I)Lcom/twitter/model/timeline/cz;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/cz;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/cz;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/twitter/model/timeline/cz;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cx;

    .line 126
    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/timeline/cx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget v0, p2, Lcom/twitter/model/timeline/cx;->b:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 117
    iget-object v0, p2, Lcom/twitter/model/timeline/cx;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 118
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
    .line 112
    check-cast p2, Lcom/twitter/model/timeline/cx;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/timeline/da;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/timeline/cx;)V

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
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/timeline/da;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/timeline/cx;

    move-result-object v0

    return-object v0
.end method
