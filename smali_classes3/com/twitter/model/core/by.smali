.class Lcom/twitter/model/core/by;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/bv;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/bw;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/twitter/model/core/by;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/bv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/twitter/model/core/EscherbirdAnnotation;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/EscherbirdAnnotation;

    .line 68
    sget-object v1, Lcom/twitter/model/core/bz;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v1, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/bz;

    .line 69
    new-instance v2, Lcom/twitter/model/core/bv;

    invoke-direct {v2, v0, v1}, Lcom/twitter/model/core/bv;-><init>(Lcom/twitter/model/core/EscherbirdAnnotation;Lcom/twitter/model/core/bz;)V

    return-object v2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p2, Lcom/twitter/model/core/bv;->c:Lcom/twitter/model/core/EscherbirdAnnotation;

    sget-object v1, Lcom/twitter/model/core/EscherbirdAnnotation;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/bv;->d:Lcom/twitter/model/core/bz;

    sget-object v2, Lcom/twitter/model/core/bz;->a:Lcom/twitter/util/serialization/ah;

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 61
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
    .line 55
    check-cast p2, Lcom/twitter/model/core/bv;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/by;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bv;)V

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
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/by;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/bv;

    move-result-object v0

    return-object v0
.end method
