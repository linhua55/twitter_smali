.class public Lcom/twitter/model/topic/f;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/topic/e;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/topic/e;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v2

    .line 57
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v3

    .line 58
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v4

    .line 60
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v5

    .line 61
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v6

    .line 62
    new-instance v1, Lcom/twitter/model/topic/e;

    invoke-direct/range {v1 .. v7}, Lcom/twitter/model/topic/e;-><init>(IIZIJ)V

    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/topic/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget v0, p2, Lcom/twitter/model/topic/e;->c:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/topic/e;->d:I

    .line 46
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/topic/e;->e:Z

    .line 47
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/topic/e;->f:I

    .line 48
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/topic/e;->g:J

    .line 49
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    .line 50
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
    .line 41
    check-cast p2, Lcom/twitter/model/topic/e;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/topic/f;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/topic/e;)V

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
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/topic/f;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/topic/e;

    move-result-object v0

    return-object v0
.end method
