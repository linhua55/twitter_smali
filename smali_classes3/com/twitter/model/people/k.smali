.class Lcom/twitter/model/people/k;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/people/i;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/twitter/model/people/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/TwitterUser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0}, Lcom/twitter/model/core/cv;-><init>()V

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/TwitterUser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p2}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    .line 51
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
    .line 46
    check-cast p2, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/people/k;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/TwitterUser;)V

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
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/people/k;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    return-object v0
.end method
