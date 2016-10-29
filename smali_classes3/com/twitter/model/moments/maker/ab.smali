.class Lcom/twitter/model/moments/maker/ab;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/moments/maker/y;",
        "Lcom/twitter/model/moments/maker/aa;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/maker/z;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/ab;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/moments/maker/aa;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/twitter/model/moments/maker/aa;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/aa;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/aa;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/moments/maker/aa;->a(J)Lcom/twitter/model/moments/maker/aa;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/maker/w;->f:Lcom/twitter/util/serialization/ah;

    .line 125
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/maker/aa;->a(Ljava/util/List;)Lcom/twitter/model/moments/maker/aa;

    move-result-object v1

    sget-object v0, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    .line 126
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/maker/aa;->a(Ljava/lang/Integer;)Lcom/twitter/model/moments/maker/aa;

    .line 127
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/object/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 104
    check-cast p2, Lcom/twitter/model/moments/maker/aa;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/moments/maker/ab;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/aa;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-wide v0, p2, Lcom/twitter/model/moments/maker/y;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/maker/y;->c:Ljava/util/List;

    sget-object v2, Lcom/twitter/model/moments/maker/w;->f:Lcom/twitter/util/serialization/ah;

    .line 110
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/maker/y;->d:Ljava/lang/Integer;

    sget-object v2, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 112
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
    .line 104
    check-cast p2, Lcom/twitter/model/moments/maker/y;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/maker/ab;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/y;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/ab;->a()Lcom/twitter/model/moments/maker/aa;

    move-result-object v0

    return-object v0
.end method
