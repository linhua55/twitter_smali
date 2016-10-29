.class Lcom/twitter/model/core/cl;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/cj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/ck;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/twitter/model/core/cl;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/cj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Lcom/twitter/model/core/cj;

    sget-object v0, Lcom/twitter/model/core/cg;->a:Lcom/twitter/util/serialization/ah;

    .line 120
    invoke-static {p1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/twitter/model/core/cj;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/cj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p2}, Lcom/twitter/model/core/cj;->c(Lcom/twitter/model/core/cj;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/cg;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 113
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
    .line 108
    check-cast p2, Lcom/twitter/model/core/cj;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/cl;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/cj;)V

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
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/cl;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/cj;

    move-result-object v0

    return-object v0
.end method
