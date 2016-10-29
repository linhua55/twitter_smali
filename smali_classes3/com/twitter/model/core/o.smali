.class Lcom/twitter/model/core/o;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/core/EscherbirdAnnotation;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/n;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/twitter/model/core/o;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/EscherbirdAnnotation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    const-class v0, Lcom/twitter/model/core/EscherbirdAnnotation$GroupType;

    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/EscherbirdAnnotation$GroupType;

    .line 217
    const-class v0, Lcom/twitter/model/core/EscherbirdAnnotation$DomainType;

    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/EscherbirdAnnotation$DomainType;

    .line 219
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v4

    .line 220
    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 222
    new-instance v1, Lcom/twitter/model/core/EscherbirdAnnotation;

    invoke-direct/range {v1 .. v6}, Lcom/twitter/model/core/EscherbirdAnnotation;-><init>(Lcom/twitter/model/core/EscherbirdAnnotation$GroupType;Lcom/twitter/model/core/EscherbirdAnnotation$DomainType;JLjava/util/Map;)V

    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/EscherbirdAnnotation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p2, Lcom/twitter/model/core/EscherbirdAnnotation;->b:Lcom/twitter/model/core/EscherbirdAnnotation$GroupType;

    const-class v1, Lcom/twitter/model/core/EscherbirdAnnotation$GroupType;

    invoke-static {v1}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/EscherbirdAnnotation;->c:Lcom/twitter/model/core/EscherbirdAnnotation$DomainType;

    const-class v2, Lcom/twitter/model/core/EscherbirdAnnotation$DomainType;

    .line 206
    invoke-static {v2}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/core/EscherbirdAnnotation;->d:J

    .line 207
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/EscherbirdAnnotation;->e:Ljava/util/Map;

    sget-object v2, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v3, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 208
    invoke-static {v2, v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 210
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
    .line 201
    check-cast p2, Lcom/twitter/model/core/EscherbirdAnnotation;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/o;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/EscherbirdAnnotation;)V

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
    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/o;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/core/EscherbirdAnnotation;

    move-result-object v0

    return-object v0
.end method
