.class Lcnk;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcnh;",
        "Lcnj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcni;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcnk;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcnj;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcnj;

    invoke-direct {v0}, Lcnj;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcnj;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/twitter/util/serialization/i;->k:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    sget-object v2, Lcom/twitter/util/serialization/i;->k:Lcom/twitter/util/serialization/ah;

    .line 62
    invoke-static {p1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v2

    .line 63
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v3

    .line 65
    invoke-virtual {p2, v0}, Lcnj;->a(Ljava/lang/String;)Lcnj;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Lcnj;->a(Ljava/lang/Object;)Lcnj;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v2}, Lcnj;->a(Ljava/util/List;)Lcnj;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Lcnj;->a(Z)Lcnj;

    .line 69
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
    .line 39
    check-cast p2, Lcnj;

    invoke-virtual {p0, p1, p2, p3}, Lcnk;->a(Lcom/twitter/util/serialization/aj;Lcnj;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcnh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p2, Lcnh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 45
    iget-object v0, p2, Lcnh;->c:Ljava/lang/Object;

    sget-object v1, Lcom/twitter/util/serialization/i;->k:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 46
    iget-object v0, p2, Lcnh;->d:Ljava/util/List;

    sget-object v1, Lcom/twitter/util/serialization/i;->k:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 47
    iget-boolean v0, p2, Lcnh;->e:Z

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 48
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
    .line 39
    check-cast p2, Lcnh;

    invoke-virtual {p0, p1, p2}, Lcnk;->a(Lcom/twitter/util/serialization/ak;Lcnh;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcnk;->a()Lcnj;

    move-result-object v0

    return-object v0
.end method
