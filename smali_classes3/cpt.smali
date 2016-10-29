.class final Lcpt;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcps;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcps;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v0

    .line 35
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v1

    .line 36
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v2

    .line 37
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v3

    .line 38
    new-instance v4, Lcps;

    invoke-direct {v4, v0, v1, v2, v3}, Lcps;-><init>(FFFF)V

    return-object v4
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcps;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget v0, p2, Lcps;->b:F

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcps;->c:F

    .line 24
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcps;->d:F

    .line 25
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcps;->e:F

    .line 26
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    .line 27
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
    .line 18
    check-cast p2, Lcps;

    invoke-virtual {p0, p1, p2}, Lcpt;->a(Lcom/twitter/util/serialization/ak;Lcps;)V

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
    .line 18
    invoke-virtual {p0, p1, p2}, Lcpt;->a(Lcom/twitter/util/serialization/aj;I)Lcps;

    move-result-object v0

    return-object v0
.end method
