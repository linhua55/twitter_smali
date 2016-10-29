.class public Lcom/twitter/model/core/ax;
.super Lcom/twitter/model/core/g;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/core/g",
        "<",
        "Lcom/twitter/model/core/av;",
        "Lcom/twitter/model/core/aw;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/model/core/g;-><init>(I)V

    .line 109
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/core/aw;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/twitter/model/core/aw;

    invoke-direct {v0}, Lcom/twitter/model/core/aw;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/aw;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/model/core/g;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/f;I)V

    .line 130
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/core/aw;->a(J)Lcom/twitter/model/core/aw;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aw;->a(Ljava/lang/String;)Lcom/twitter/model/core/aw;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aw;->b(Ljava/lang/String;)Lcom/twitter/model/core/aw;

    .line 133
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/f;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 106
    check-cast p2, Lcom/twitter/model/core/aw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/ax;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/aw;I)V

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
    .line 106
    check-cast p2, Lcom/twitter/model/core/aw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/ax;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/aw;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/av;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lcom/twitter/model/core/g;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/e;)V

    .line 115
    iget-wide v0, p2, Lcom/twitter/model/core/av;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/av;->j:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 118
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    check-cast p2, Lcom/twitter/model/core/av;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ax;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/av;)V

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
    .line 106
    check-cast p2, Lcom/twitter/model/core/av;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/ax;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/av;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/twitter/model/core/ax;->a()Lcom/twitter/model/core/aw;

    move-result-object v0

    return-object v0
.end method
