.class Lclu;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcls;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lclt;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lclu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/serialization/aj;I)Lcls;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lcls;->b:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Lcls;

    invoke-direct {v2, v0, v1}, Lcls;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public a(Lcom/twitter/util/serialization/ak;Lcls;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcls;->b:Lcom/twitter/util/serialization/ah;

    iget-object v1, p2, Lcls;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p2, Lcls;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 64
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    check-cast p2, Lcls;

    invoke-virtual {p0, p1, p2}, Lclu;->a(Lcom/twitter/util/serialization/ak;Lcls;)V

    return-void
.end method

.method public synthetic b(Lcom/twitter/util/serialization/aj;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lclu;->a(Lcom/twitter/util/serialization/aj;I)Lcls;

    move-result-object v0

    return-object v0
.end method
