.class Lcom/twitter/model/people/al;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/people/aj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/people/ak;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/twitter/model/people/al;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/people/aj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/twitter/model/people/aj;

    .line 43
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/model/people/aj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/people/aj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p2, Lcom/twitter/model/people/aj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/people/aj;->d:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 36
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
    .line 30
    check-cast p2, Lcom/twitter/model/people/aj;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/people/al;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/people/aj;)V

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
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/people/al;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/people/aj;

    move-result-object v0

    return-object v0
.end method
