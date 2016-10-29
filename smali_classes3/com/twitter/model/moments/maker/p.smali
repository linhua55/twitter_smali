.class public Lcom/twitter/model/moments/maker/p;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/moments/maker/n;",
        "Lcom/twitter/model/moments/maker/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/moments/maker/o;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/twitter/model/moments/maker/o;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/o;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/o;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/model/moments/ak;->a(Ljava/lang/String;)Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/moments/maker/o;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/maker/o;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/k;->a:Lcom/twitter/util/serialization/ah;

    .line 77
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/maker/o;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/maker/o;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/bd;->a:Lcom/twitter/util/serialization/ah;

    .line 78
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/maker/o;->a(Lcom/twitter/model/moments/bd;)Lcom/twitter/model/moments/maker/o;

    .line 79
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
    .line 66
    check-cast p2, Lcom/twitter/model/moments/maker/o;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/moments/maker/p;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/o;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p2, Lcom/twitter/model/moments/maker/n;->b:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0}, Lcom/twitter/model/moments/ak;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/maker/n;->c:Lcom/twitter/model/moments/k;

    sget-object v2, Lcom/twitter/model/moments/k;->a:Lcom/twitter/util/serialization/ah;

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/maker/n;->d:Lcom/twitter/model/moments/bd;

    sget-object v2, Lcom/twitter/model/moments/bd;->a:Lcom/twitter/util/serialization/ah;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 87
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
    .line 66
    check-cast p2, Lcom/twitter/model/moments/maker/n;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/maker/p;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/n;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/p;->a()Lcom/twitter/model/moments/maker/o;

    move-result-object v0

    return-object v0
.end method
