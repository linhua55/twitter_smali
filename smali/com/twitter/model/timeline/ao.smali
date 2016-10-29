.class Lcom/twitter/model/timeline/ao;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/timeline/al;",
        "Lcom/twitter/model/timeline/an;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/am;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/twitter/model/timeline/ao;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/timeline/an;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/twitter/model/timeline/an;

    invoke-direct {v0}, Lcom/twitter/model/timeline/an;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/timeline/an;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/timeline/an;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/an;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/an;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/an;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/an;->c(Ljava/lang/String;)Lcom/twitter/model/timeline/an;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/an;->d(Ljava/lang/String;)Lcom/twitter/model/timeline/an;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/an;->e(Ljava/lang/String;)Lcom/twitter/model/timeline/an;

    .line 144
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
    .line 119
    check-cast p2, Lcom/twitter/model/timeline/an;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/timeline/ao;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/timeline/an;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/timeline/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p2, Lcom/twitter/model/timeline/al;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/al;->c:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/al;->e:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/al;->d:Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/al;->f:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 128
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
    .line 119
    check-cast p2, Lcom/twitter/model/timeline/al;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/timeline/ao;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/timeline/al;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/twitter/model/timeline/ao;->a()Lcom/twitter/model/timeline/an;

    move-result-object v0

    return-object v0
.end method
