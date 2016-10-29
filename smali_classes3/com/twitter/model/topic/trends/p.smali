.class Lcom/twitter/model/topic/trends/p;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/topic/trends/n;",
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

.method synthetic constructor <init>(Lcom/twitter/model/topic/trends/o;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/model/topic/trends/p;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/topic/trends/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Lcom/twitter/model/topic/trends/n;

    invoke-direct {v1}, Lcom/twitter/model/topic/trends/n;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/topic/trends/n;->b:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v2

    .line 54
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lcom/twitter/model/topic/trends/n;->c:Ljava/util/ArrayList;

    .line 55
    return-object v1

    .line 54
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/topic/trends/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p2, Lcom/twitter/model/topic/trends/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 44
    iget-object v0, p2, Lcom/twitter/model/topic/trends/n;->c:Ljava/util/ArrayList;

    sget-object v1, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 45
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
    check-cast p2, Lcom/twitter/model/topic/trends/n;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/topic/trends/p;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/topic/trends/n;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/topic/trends/p;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/topic/trends/n;

    move-result-object v0

    return-object v0
.end method
