.class public Lcom/twitter/model/core/v;
.super Lcom/twitter/model/core/g;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/core/g",
        "<",
        "Lcom/twitter/model/core/t;",
        "Lcom/twitter/model/core/u;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/model/core/g;-><init>(I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/core/u;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/twitter/model/core/u;

    invoke-direct {v0}, Lcom/twitter/model/core/u;-><init>()V

    return-object v0
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
    .line 48
    check-cast p2, Lcom/twitter/model/core/u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/v;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/u;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/u;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/model/core/g;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/f;I)V

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
    .line 48
    check-cast p2, Lcom/twitter/model/core/u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/v;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/u;I)V

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
    .line 48
    check-cast p2, Lcom/twitter/model/core/t;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/v;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/t;)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/twitter/model/core/g;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/e;)V

    .line 57
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
    .line 48
    check-cast p2, Lcom/twitter/model/core/t;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/v;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/t;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/twitter/model/core/v;->a()Lcom/twitter/model/core/u;

    move-result-object v0

    return-object v0
.end method
