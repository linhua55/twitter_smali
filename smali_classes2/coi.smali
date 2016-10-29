.class Lcoi;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcof;",
        "Lcoh;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcog;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcoi;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcoh;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcoh;

    invoke-direct {v0}, Lcoh;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcoh;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcoa;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoa;

    .line 148
    new-instance v1, Lcoc;

    invoke-direct {v1, v0}, Lcoc;-><init>(Lcoa;)V

    invoke-virtual {p2, v1}, Lcoh;->a(Lcoc;)Lcoh;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcoh;->a(Ljava/lang/String;)Lcoh;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcno;->a:Lcom/twitter/util/serialization/ah;

    .line 150
    invoke-static {p1, v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcoh;->a(Ljava/util/Map;)Lcoh;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    .line 152
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->d(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcoh;->a(Ljava/util/Set;)Lcoh;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcnh;->a:Lcom/twitter/util/serialization/ah;

    .line 153
    invoke-static {p1, v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcoh;->b(Ljava/util/Map;)Lcoh;

    .line 155
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
    .line 123
    check-cast p2, Lcoh;

    invoke-virtual {p0, p1, p2, p3}, Lcoi;->a(Lcom/twitter/util/serialization/aj;Lcoh;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcof;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcoa;->a:Lcom/twitter/util/serialization/ah;

    iget-object v1, p2, Lcof;->c:Lcoa;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 129
    iget-object v0, p2, Lcof;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 130
    iget-object v0, p2, Lcof;->e:Ljava/util/Map;

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcno;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    .line 132
    iget-object v0, p2, Lcof;->f:Ljava/util/Set;

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V

    .line 133
    iget-object v0, p2, Lcof;->g:Ljava/util/Map;

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcnh;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    .line 135
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
    .line 123
    check-cast p2, Lcof;

    invoke-virtual {p0, p1, p2}, Lcoi;->a(Lcom/twitter/util/serialization/ak;Lcof;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcoi;->a()Lcoh;

    move-result-object v0

    return-object v0
.end method
