.class Lcod;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcoa;",
        "Lcoc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcob;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcod;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcoc;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcoc;

    invoke-direct {v0}, Lcoc;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcoc;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v2

    .line 148
    invoke-static {v2}, Lcom/twitter/util/collection/v;->a(I)Lcom/twitter/util/collection/v;

    move-result-object v3

    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 150
    sget-object v0, Lcnv;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnv;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    iget-object v4, v0, Lcnv;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 149
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v3}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p2, v0}, Lcoc;->a(Ljava/util/Map;)Lcoc;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcoc;->a(Ljava/lang/String;)Lcoc;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/String;)Lcoc;

    .line 159
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
    .line 121
    check-cast p2, Lcoc;

    invoke-virtual {p0, p1, p2, p3}, Lcod;->a(Lcom/twitter/util/serialization/aj;Lcoc;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcoa;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p2, Lcoa;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 126
    iget-object v0, p2, Lcoa;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcnv;

    .line 128
    sget-object v3, Lcnv;->a:Lcom/twitter/util/serialization/ah;

    if-eqz v1, :cond_0

    :goto_1
    invoke-virtual {v3, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcnv;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcnv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    :cond_1
    iget-object v0, p2, Lcoa;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 135
    iget-object v0, p2, Lcoa;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 136
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
    .line 121
    check-cast p2, Lcoa;

    invoke-virtual {p0, p1, p2}, Lcod;->a(Lcom/twitter/util/serialization/ak;Lcoa;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcod;->a()Lcoc;

    move-result-object v0

    return-object v0
.end method
