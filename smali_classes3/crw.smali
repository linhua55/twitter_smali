.class final Lcrw;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcrt;",
        "Lcrv;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcru;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcrw;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcrv;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcrv;

    invoke-direct {v0}, Lcrv;-><init>()V

    return-object v0
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
    check-cast p2, Lcrv;

    invoke-virtual {p0, p1, p2, p3}, Lcrw;->a(Lcom/twitter/util/serialization/aj;Lcrv;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcrv;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcrv;->a(Ljava/lang/String;)Lcrv;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrv;->b(Ljava/lang/String;)Lcrv;

    .line 79
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcrt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p2, Lcrt;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcrt;->d:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 86
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
    check-cast p2, Lcrt;

    invoke-virtual {p0, p1, p2}, Lcrw;->a(Lcom/twitter/util/serialization/ak;Lcrt;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcrw;->a()Lcrv;

    move-result-object v0

    return-object v0
.end method
