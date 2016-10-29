.class Lcom/twitter/library/commerce/model/x;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/library/commerce/model/v;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/commerce/model/w;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/twitter/library/commerce/model/x;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/library/commerce/model/v;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 82
    sget-object v1, Lcom/twitter/library/commerce/model/r;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 84
    new-instance v2, Lcom/twitter/library/commerce/model/v;

    invoke-direct {v2}, Lcom/twitter/library/commerce/model/v;-><init>()V

    .line 85
    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/v;->a(Ljava/lang/Long;)V

    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/r;

    .line 87
    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/v;->a(Lcom/twitter/library/commerce/model/r;)V

    goto :goto_0

    .line 89
    :cond_0
    return-object v2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/v;->b()Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 73
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/v;->a()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/r;->a:Lcom/twitter/util/serialization/ah;

    .line 74
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 75
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
    .line 68
    check-cast p2, Lcom/twitter/library/commerce/model/v;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/commerce/model/x;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/v;)V

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
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/commerce/model/x;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/library/commerce/model/v;

    move-result-object v0

    return-object v0
.end method
