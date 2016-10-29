.class Lcom/twitter/model/core/cr;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/core/TwitterSocialProof;",
        "Lcom/twitter/model/core/cq;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/cp;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/twitter/model/core/cr;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/core/cq;
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcom/twitter/model/core/cq;

    invoke-direct {v0}, Lcom/twitter/model/core/cq;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/cq;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/core/cq;->a(I)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cq;->b(I)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 249
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cq;->c(I)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cq;->d(I)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cq;->a(Ljava/lang/String;)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 252
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cq;->e(I)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cq;->b(Ljava/lang/String;)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cq;->g(I)Lcom/twitter/model/core/cq;

    .line 255
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
    .line 223
    check-cast p2, Lcom/twitter/model/core/cq;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/core/cr;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/core/cq;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/TwitterSocialProof;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget v0, p2, Lcom/twitter/model/core/TwitterSocialProof;->b:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/TwitterSocialProof;->d:I

    .line 228
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/TwitterSocialProof;->e:I

    .line 229
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/TwitterSocialProof;->f:I

    .line 230
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/TwitterSocialProof;->c:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/TwitterSocialProof;->g:I

    .line 232
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/core/TwitterSocialProof;->h:Ljava/lang/String;

    .line 233
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/core/TwitterSocialProof;->i:I

    .line 234
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 235
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
    .line 223
    check-cast p2, Lcom/twitter/model/core/TwitterSocialProof;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/core/cr;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/core/TwitterSocialProof;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/twitter/model/core/cr;->a()Lcom/twitter/model/core/cq;

    move-result-object v0

    return-object v0
.end method
