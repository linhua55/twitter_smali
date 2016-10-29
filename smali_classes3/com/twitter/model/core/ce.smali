.class Lcom/twitter/model/core/ce;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/cc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/cd;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/model/core/ce;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/cc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/twitter/model/core/bv;->a:Lcom/twitter/util/serialization/ah;

    .line 87
    invoke-static {p1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 88
    new-instance v1, Lcom/twitter/model/core/cc;

    invoke-direct {v1, v0}, Lcom/twitter/model/core/cc;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/cc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p2}, Lcom/twitter/model/core/cc;->a()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/bv;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 80
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
    .line 75
    check-cast p2, Lcom/twitter/model/core/cc;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ce;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/cc;)V

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
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ce;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/cc;

    move-result-object v0

    return-object v0
.end method
