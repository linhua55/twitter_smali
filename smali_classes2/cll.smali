.class Lcll;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lclj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lclk;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcll;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lclj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Lclj;

    invoke-direct {v1}, Lclj;-><init>()V

    .line 41
    new-instance v2, Ljava/util/HashMap;

    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v3, Lcom/twitter/util/serialization/i;->k:Lcom/twitter/util/serialization/ah;

    .line 42
    invoke-static {p1, v0, v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lclj;->b:Ljava/util/Map;

    .line 44
    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lclj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p2, Lclj;->b:Ljava/util/Map;

    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/util/serialization/i;->k:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    .line 34
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
    .line 29
    check-cast p2, Lclj;

    invoke-virtual {p0, p1, p2}, Lcll;->a(Lcom/twitter/util/serialization/ak;Lclj;)V

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
    .line 29
    invoke-virtual {p0, p1, p2}, Lcll;->a(Lcom/twitter/util/serialization/aj;I)Lclj;

    move-result-object v0

    return-object v0
.end method
