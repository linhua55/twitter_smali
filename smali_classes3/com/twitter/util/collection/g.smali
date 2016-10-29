.class final Lcom/twitter/util/collection/g;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/util/serialization/ah;


# direct methods
.method constructor <init>(Lcom/twitter/util/serialization/ah;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/twitter/util/collection/g;->a:Lcom/twitter/util/serialization/ah;

    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/util/collection/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "I)",
            "Lcom/twitter/util/collection/ab",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lcom/twitter/util/collection/g;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/util/collection/ab;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "Lcom/twitter/util/collection/ab",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/twitter/util/collection/g;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p2}, Lcom/twitter/util/collection/ab;->a(Lcom/twitter/util/collection/ab;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 698
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
    .line 693
    check-cast p2, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/collection/g;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/util/collection/ab;)V

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
    .line 693
    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/collection/g;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method
