.class public final Lcsd;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcsa;",
        "Lcsc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcsc;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcsc;

    invoke-direct {v0}, Lcsc;-><init>()V

    return-object v0
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
    .line 114
    check-cast p2, Lcsc;

    invoke-virtual {p0, p1, p2, p3}, Lcsd;->a(Lcom/twitter/util/serialization/aj;Lcsc;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcsc;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcsc;->a(J)Lcsc;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcsc;->b(J)Lcsc;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcsc;->c(J)Lcsc;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsc;->a(Ljava/lang/String;)Lcsc;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsc;->b(Ljava/lang/String;)Lcsc;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcsc;->a(Z)Lcsc;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/av;->b:Lcom/twitter/util/serialization/ah;

    .line 130
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/j;

    invoke-virtual {v1, v0}, Lcsc;->a(Lcom/twitter/model/core/j;)Lcsc;

    .line 131
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcsa;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-wide v0, p2, Lcsa;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcsa;->c:J

    .line 137
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcsa;->d:J

    .line 138
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcsa;->e:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcsa;->f:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcsa;->g:Z

    .line 141
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcsa;->h:Lcom/twitter/model/core/j;

    sget-object v2, Lcom/twitter/model/core/av;->b:Lcom/twitter/util/serialization/ah;

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 143
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
    .line 114
    check-cast p2, Lcsa;

    invoke-virtual {p0, p1, p2}, Lcsd;->a(Lcom/twitter/util/serialization/ak;Lcsa;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcsd;->a()Lcsc;

    move-result-object v0

    return-object v0
.end method
