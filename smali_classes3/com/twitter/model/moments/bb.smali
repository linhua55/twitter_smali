.class Lcom/twitter/model/moments/bb;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/moments/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/au;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/twitter/model/moments/bb;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/moments/ba;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v2, Lcom/twitter/model/moments/ba;

    sget-object v0, Lcom/twitter/model/moments/ay;->a:Lcom/twitter/util/serialization/ah;

    .line 137
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ay;

    sget-object v1, Lcom/twitter/model/moments/aw;->a:Lcom/twitter/util/serialization/ah;

    .line 138
    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/moments/aw;

    .line 139
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/twitter/model/moments/ba;-><init>(Lcom/twitter/model/moments/ay;Lcom/twitter/model/moments/aw;J)V

    .line 136
    return-object v2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/ba;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p2, Lcom/twitter/model/moments/ba;->b:Lcom/twitter/model/moments/ay;

    sget-object v1, Lcom/twitter/model/moments/ay;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/ba;->c:Lcom/twitter/model/moments/aw;

    sget-object v2, Lcom/twitter/model/moments/aw;->a:Lcom/twitter/util/serialization/ah;

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/moments/ba;->d:J

    .line 129
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    .line 130
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
    .line 122
    check-cast p2, Lcom/twitter/model/moments/ba;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/bb;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/ba;)V

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
    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/bb;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/moments/ba;

    move-result-object v0

    return-object v0
.end method
