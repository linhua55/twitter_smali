.class final Lcom/twitter/util/collection/i;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/util/serialization/ah;

.field final synthetic b:Lcom/twitter/util/serialization/ah;


# direct methods
.method constructor <init>(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/twitter/util/collection/i;->a:Lcom/twitter/util/serialization/ah;

    iput-object p2, p0, Lcom/twitter/util/collection/i;->b:Lcom/twitter/util/serialization/ah;

    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "I)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/twitter/util/collection/i;->a:Lcom/twitter/util/serialization/ah;

    iget-object v1, p0, Lcom/twitter/util/collection/i;->b:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/collection/i;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/twitter/util/collection/i;->a:Lcom/twitter/util/serialization/ah;

    iget-object v1, p0, Lcom/twitter/util/collection/i;->b:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, p2, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    .line 393
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
    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/collection/i;->a(Lcom/twitter/util/serialization/aj;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
