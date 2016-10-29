.class Lcom/twitter/model/core/be;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/core/bb;",
        "Lcom/twitter/model/core/bd;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/bc;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/twitter/model/core/be;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/core/bd;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/twitter/model/core/bd;

    invoke-direct {v0}, Lcom/twitter/model/core/bd;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/bd;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/core/bd;->a(Ljava/lang/String;)Lcom/twitter/model/core/bd;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bd;->b(Ljava/lang/String;)Lcom/twitter/model/core/bd;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bd;->a(Z)Lcom/twitter/model/core/bd;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bd;->b(Z)Lcom/twitter/model/core/bd;

    .line 134
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
    .line 109
    check-cast p2, Lcom/twitter/model/core/bd;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/be;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/bd;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p2, Lcom/twitter/model/core/bb;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/bb;->c:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/core/bb;->d:Z

    .line 116
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/core/bb;->e:Z

    .line 117
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 118
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
    .line 109
    check-cast p2, Lcom/twitter/model/core/bb;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/be;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/bb;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/twitter/model/core/be;->a()Lcom/twitter/model/core/bd;

    move-result-object v0

    return-object v0
.end method
