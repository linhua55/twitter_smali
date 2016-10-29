.class Lcom/twitter/model/moments/bc;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/moments/at;",
        "Lcom/twitter/model/moments/av;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/au;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/twitter/model/moments/bc;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/moments/av;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/twitter/model/moments/av;

    invoke-direct {v0}, Lcom/twitter/model/moments/av;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/av;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/twitter/model/moments/ay;->a:Lcom/twitter/util/serialization/ah;

    .line 55
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 54
    invoke-virtual {p2, v0}, Lcom/twitter/model/moments/av;->a(Ljava/util/List;)Lcom/twitter/model/moments/av;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/aw;->a:Lcom/twitter/util/serialization/ah;

    .line 56
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/aw;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/av;->a(Lcom/twitter/model/moments/aw;)Lcom/twitter/model/moments/av;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/timeline/l;->a:Lcom/twitter/util/serialization/ah;

    .line 57
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/l;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/av;->a(Lcom/twitter/model/timeline/l;)Lcom/twitter/model/moments/av;

    .line 58
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
    .line 42
    check-cast p2, Lcom/twitter/model/moments/av;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/moments/bc;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/av;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/at;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p2, Lcom/twitter/model/moments/at;->c:Ljava/util/List;

    sget-object v1, Lcom/twitter/model/moments/ay;->a:Lcom/twitter/util/serialization/ah;

    .line 64
    invoke-static {v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/at;->d:Lcom/twitter/model/moments/aw;

    sget-object v2, Lcom/twitter/model/moments/aw;->a:Lcom/twitter/util/serialization/ah;

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/at;->e:Lcom/twitter/model/timeline/l;

    sget-object v2, Lcom/twitter/model/timeline/l;->a:Lcom/twitter/util/serialization/ah;

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 67
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
    .line 42
    check-cast p2, Lcom/twitter/model/moments/at;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/bc;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/at;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/twitter/model/moments/bc;->a()Lcom/twitter/model/moments/av;

    move-result-object v0

    return-object v0
.end method
