.class Lcom/twitter/model/timeline/ad;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/timeline/aa;",
        "Lcom/twitter/model/timeline/ac;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/ab;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/twitter/model/timeline/ad;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/timeline/ac;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/twitter/model/timeline/ac;

    invoke-direct {v0}, Lcom/twitter/model/timeline/ac;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/timeline/ac;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/timeline/ac;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/ac;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    .line 109
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/ac;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/ac;

    move-result-object v1

    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 110
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/ac;->a(Ljava/util/List;)Lcom/twitter/model/timeline/ac;

    .line 111
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
    .line 89
    check-cast p2, Lcom/twitter/model/timeline/ac;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/timeline/ad;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/timeline/ac;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/timeline/aa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p2, Lcom/twitter/model/timeline/aa;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/aa;->c:Lcom/twitter/model/timeline/al;

    sget-object v2, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/aa;->d:Ljava/util/List;

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 95
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 96
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
    .line 89
    check-cast p2, Lcom/twitter/model/timeline/aa;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/timeline/ad;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/timeline/aa;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/twitter/model/timeline/ad;->a()Lcom/twitter/model/timeline/ac;

    move-result-object v0

    return-object v0
.end method
