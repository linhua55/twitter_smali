.class public Lcom/twitter/model/moments/maker/r;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/moments/maker/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/moments/maker/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Lcom/twitter/model/moments/maker/q;

    sget-object v0, Lcom/twitter/model/moments/maker/n;->a:Lcom/twitter/model/moments/maker/p;

    .line 37
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/n;

    invoke-direct {v1, v0}, Lcom/twitter/model/moments/maker/q;-><init>(Lcom/twitter/model/moments/maker/n;)V

    .line 36
    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p2, Lcom/twitter/model/moments/maker/q;->a:Lcom/twitter/model/moments/maker/n;

    sget-object v1, Lcom/twitter/model/moments/maker/n;->a:Lcom/twitter/model/moments/maker/p;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 30
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
    .line 25
    check-cast p2, Lcom/twitter/model/moments/maker/q;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/maker/r;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/q;)V

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
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/maker/r;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/moments/maker/q;

    move-result-object v0

    return-object v0
.end method
