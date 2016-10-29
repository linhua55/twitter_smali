.class Lclq;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lclp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/util/serialization/ae;-><init>(I)V

    .line 83
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lclp;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 96
    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    .line 97
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v3

    .line 98
    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 99
    :goto_0
    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    sget-object v0, Lcom/twitter/model/media/EditableImage;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    move-object v1, v0

    .line 100
    :goto_1
    new-instance v4, Lclp;

    invoke-static {v3}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v4, v0, v2, v1}, Lclp;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/twitter/model/media/EditableImage;)V

    return-object v4

    :cond_0
    move-object v2, v0

    .line 98
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 99
    goto :goto_1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lclp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p2}, Lclp;->a()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 88
    invoke-virtual {p2}, Lclp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 89
    invoke-virtual {p2}, Lclp;->c()Lcom/twitter/model/media/EditableImage;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/media/EditableImage;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 90
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
    .line 76
    check-cast p2, Lclp;

    invoke-virtual {p0, p1, p2}, Lclq;->a(Lcom/twitter/util/serialization/ak;Lclp;)V

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
    .line 76
    invoke-virtual {p0, p1, p2}, Lclq;->a(Lcom/twitter/util/serialization/aj;I)Lclp;

    move-result-object v0

    return-object v0
.end method
