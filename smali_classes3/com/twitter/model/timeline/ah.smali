.class Lcom/twitter/model/timeline/ah;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/timeline/ae;",
        "Lcom/twitter/model/timeline/ag;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/util/serialization/d;-><init>(I)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/af;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/twitter/model/timeline/ah;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/timeline/ag;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/twitter/model/timeline/ag;

    invoke-direct {v0}, Lcom/twitter/model/timeline/ag;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/timeline/ag;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/timeline/ag;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/ag;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/ag;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/ag;

    .line 87
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
    .line 63
    check-cast p2, Lcom/twitter/model/timeline/ag;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/timeline/ah;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/timeline/ag;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/timeline/ae;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p2, Lcom/twitter/model/timeline/ae;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/ae;->c:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 74
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
    .line 63
    check-cast p2, Lcom/twitter/model/timeline/ae;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/timeline/ah;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/timeline/ae;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/twitter/model/timeline/ah;->a()Lcom/twitter/model/timeline/ag;

    move-result-object v0

    return-object v0
.end method
