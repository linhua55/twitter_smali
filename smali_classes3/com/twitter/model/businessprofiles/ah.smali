.class Lcom/twitter/model/businessprofiles/ah;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/businessprofiles/af;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/businessprofiles/ag;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/model/businessprofiles/ah;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/businessprofiles/af;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/twitter/model/businessprofiles/ad;->c:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/businessprofiles/ad;

    .line 88
    sget-object v1, Lcom/twitter/model/businessprofiles/ad;->c:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v1, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/businessprofiles/ad;

    .line 89
    new-instance v2, Lcom/twitter/model/businessprofiles/af;

    invoke-direct {v2, v0, v1}, Lcom/twitter/model/businessprofiles/af;-><init>(Lcom/twitter/model/businessprofiles/ad;Lcom/twitter/model/businessprofiles/ad;)V

    return-object v2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/af;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p2, Lcom/twitter/model/businessprofiles/af;->b:Lcom/twitter/model/businessprofiles/ad;

    sget-object v1, Lcom/twitter/model/businessprofiles/ad;->c:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/af;->c:Lcom/twitter/model/businessprofiles/ad;

    sget-object v2, Lcom/twitter/model/businessprofiles/ad;->c:Lcom/twitter/util/serialization/ah;

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 81
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
    .line 75
    check-cast p2, Lcom/twitter/model/businessprofiles/af;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/businessprofiles/ah;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/af;)V

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
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/businessprofiles/ah;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/businessprofiles/af;

    move-result-object v0

    return-object v0
.end method
