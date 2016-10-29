.class Lcom/twitter/model/moments/ac;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/moments/z;",
        "Lcom/twitter/model/moments/ab;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/aa;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/model/moments/ac;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/moments/ab;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/twitter/model/moments/ab;

    invoke-direct {v0}, Lcom/twitter/model/moments/ab;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/ab;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/moments/ab;->a(Ljava/lang/String;)Lcom/twitter/model/moments/ab;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/ab;->b(Ljava/lang/String;)Lcom/twitter/model/moments/ab;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/ab;->c(Ljava/lang/String;)Lcom/twitter/model/moments/ab;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/ab;->d(Ljava/lang/String;)Lcom/twitter/model/moments/ab;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/twitter/model/moments/ab;->e()Lcom/twitter/model/moments/z;

    .line 95
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
    .line 71
    check-cast p2, Lcom/twitter/model/moments/ab;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/moments/ac;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/ab;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p2, Lcom/twitter/model/moments/z;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/z;->c:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/z;->d:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/z;->e:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 79
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
    .line 71
    check-cast p2, Lcom/twitter/model/moments/z;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/ac;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/z;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/twitter/model/moments/ac;->a()Lcom/twitter/model/moments/ab;

    move-result-object v0

    return-object v0
.end method
