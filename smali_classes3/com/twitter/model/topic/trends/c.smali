.class Lcom/twitter/model/topic/trends/c;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/topic/trends/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/topic/trends/b;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/twitter/model/topic/trends/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/topic/trends/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v1, Lcom/twitter/model/topic/trends/a;

    invoke-direct {v1}, Lcom/twitter/model/topic/trends/a;-><init>()V

    .line 60
    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/topic/trends/a;->b:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/model/topic/trends/a;->c:J

    .line 62
    sget-object v0, Lcom/twitter/model/topic/trends/d;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/trends/d;

    iput-object v0, v1, Lcom/twitter/model/topic/trends/a;->d:Lcom/twitter/model/topic/trends/d;

    .line 63
    sget-object v0, Lcom/twitter/model/topic/trends/f;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/trends/f;

    iput-object v0, v1, Lcom/twitter/model/topic/trends/a;->e:Lcom/twitter/model/topic/trends/f;

    .line 64
    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/topic/trends/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p2, Lcom/twitter/model/topic/trends/a;->b:Ljava/util/List;

    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 50
    iget-wide v0, p2, Lcom/twitter/model/topic/trends/a;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/topic/trends/a;->d:Lcom/twitter/model/topic/trends/d;

    sget-object v2, Lcom/twitter/model/topic/trends/d;->a:Lcom/twitter/util/serialization/ah;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/topic/trends/a;->e:Lcom/twitter/model/topic/trends/f;

    sget-object v2, Lcom/twitter/model/topic/trends/f;->a:Lcom/twitter/util/serialization/ah;

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 53
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
    .line 45
    check-cast p2, Lcom/twitter/model/topic/trends/a;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/topic/trends/c;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/topic/trends/a;)V

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
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/topic/trends/c;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/topic/trends/a;

    move-result-object v0

    return-object v0
.end method
