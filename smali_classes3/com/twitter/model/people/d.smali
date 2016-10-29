.class abstract Lcom/twitter/model/people/d;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/twitter/model/people/a;",
        "PB:",
        "Lcom/twitter/model/people/c",
        "<TPB;TP;>;>",
        "Lcom/twitter/util/serialization/d",
        "<TP;TPB;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/people/c;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "TPB;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 47
    sget-object v0, Lcom/twitter/model/people/l;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/l;

    invoke-virtual {p2, v0}, Lcom/twitter/model/people/c;->a(Lcom/twitter/model/people/l;)Lcom/twitter/model/people/c;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/c;->a(Ljava/lang/String;)Lcom/twitter/model/people/c;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/people/aj;->a:Lcom/twitter/util/serialization/ah;

    .line 49
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/people/aj;

    invoke-virtual {v1, v0}, Lcom/twitter/model/people/c;->a(Lcom/twitter/model/people/aj;)Lcom/twitter/model/people/c;

    move-result-object v0

    new-instance v1, Lcom/twitter/model/people/f;

    invoke-direct {v1, v2}, Lcom/twitter/model/people/f;-><init>(Lcom/twitter/model/people/b;)V

    .line 51
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/c;->a(Ljava/lang/Iterable;)Lcom/twitter/model/people/c;

    move-result-object v0

    new-instance v1, Lcom/twitter/model/people/e;

    invoke-direct {v1, v2}, Lcom/twitter/model/people/e;-><init>(Lcom/twitter/model/people/b;)V

    .line 52
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/c;->b(Ljava/lang/Iterable;)Lcom/twitter/model/people/c;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 53
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/c;->c(Ljava/lang/Iterable;)Lcom/twitter/model/people/c;

    .line 54
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
    .line 40
    check-cast p2, Lcom/twitter/model/people/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/people/d;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/people/c;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/people/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "TP;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v0, p2, Lcom/twitter/model/people/a;->a:Lcom/twitter/model/people/l;

    sget-object v1, Lcom/twitter/model/people/l;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/people/a;->b:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/people/a;->c:Lcom/twitter/model/people/aj;

    sget-object v2, Lcom/twitter/model/people/aj;->a:Lcom/twitter/util/serialization/ah;

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 62
    iget-object v0, p2, Lcom/twitter/model/people/a;->d:Ljava/util/List;

    .line 63
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/twitter/model/people/f;

    invoke-direct {v1, v3}, Lcom/twitter/model/people/f;-><init>(Lcom/twitter/model/people/b;)V

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 66
    iget-object v0, p2, Lcom/twitter/model/people/a;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/twitter/model/people/e;

    invoke-direct {v1, v3}, Lcom/twitter/model/people/e;-><init>(Lcom/twitter/model/people/b;)V

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 69
    iget-object v0, p2, Lcom/twitter/model/people/a;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 71
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
    .line 40
    check-cast p2, Lcom/twitter/model/people/a;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/people/d;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/people/a;)V

    return-void
.end method
