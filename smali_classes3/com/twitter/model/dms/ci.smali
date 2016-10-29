.class public Lcom/twitter/model/dms/ci;
.super Lcom/twitter/model/dms/k;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/k",
        "<",
        "Lcom/twitter/model/dms/cf;",
        "Lcom/twitter/model/dms/ch;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/twitter/model/dms/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/ch;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/twitter/model/dms/ch;

    invoke-direct {v0}, Lcom/twitter/model/dms/ch;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/ch;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/model/dms/k;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/j;I)V

    .line 92
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/dms/ch;->a(J)Lcom/twitter/model/dms/ch;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/ay;->a:Lcom/twitter/util/serialization/ah;

    .line 93
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ay;

    invoke-virtual {v1, v0}, Lcom/twitter/model/dms/ch;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/model/dms/ch;

    .line 94
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    check-cast p2, Lcom/twitter/model/dms/ch;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/ci;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/ch;I)V

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
    .line 74
    check-cast p2, Lcom/twitter/model/dms/ch;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/ci;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/ch;I)V

    return-void
.end method

.method public a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/cf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/twitter/model/dms/k;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/i;)V

    .line 78
    iget-wide v0, p2, Lcom/twitter/model/dms/cf;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    sget-object v2, Lcom/twitter/model/core/ay;->a:Lcom/twitter/util/serialization/ah;

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 80
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    check-cast p2, Lcom/twitter/model/dms/cf;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/ci;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/cf;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    check-cast p2, Lcom/twitter/model/dms/cf;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/ci;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/cf;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/twitter/model/dms/ci;->a()Lcom/twitter/model/dms/ch;

    move-result-object v0

    return-object v0
.end method
