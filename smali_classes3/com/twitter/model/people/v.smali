.class Lcom/twitter/model/people/v;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/people/t;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/people/u;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/twitter/model/people/v;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/people/t;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v1, Lcom/twitter/model/people/t;

    .line 46
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/twitter/model/people/w;->g:Lcom/twitter/util/serialization/ah;

    .line 47
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/w;

    invoke-direct {v1, v2, v0}, Lcom/twitter/model/people/t;-><init>(Ljava/lang/String;Lcom/twitter/model/people/w;)V

    .line 45
    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/people/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p2, Lcom/twitter/model/people/t;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/people/t;->c:Lcom/twitter/model/people/w;

    sget-object v2, Lcom/twitter/model/people/w;->g:Lcom/twitter/util/serialization/ah;

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 38
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
    .line 32
    check-cast p2, Lcom/twitter/model/people/t;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/people/v;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/people/t;)V

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
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/people/v;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/people/t;

    move-result-object v0

    return-object v0
.end method
