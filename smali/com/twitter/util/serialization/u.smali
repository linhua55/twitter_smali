.class final Lcom/twitter/util/serialization/u;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/util/serialization/ah;


# direct methods
.method constructor <init>(Lcom/twitter/util/serialization/ah;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/twitter/util/serialization/u;->a:Lcom/twitter/util/serialization/ah;

    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/twitter/util/serialization/u;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 480
    return-void
.end method

.method protected b(Lcom/twitter/util/serialization/aj;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/twitter/util/serialization/u;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
