.class Lcrn;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcri;",
        "Lcrk;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcrj;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcrn;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcrk;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcrk;

    invoke-direct {v0}, Lcrk;-><init>()V

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
    .line 75
    check-cast p2, Lcrk;

    invoke-virtual {p0, p1, p2, p3}, Lcrn;->a(Lcom/twitter/util/serialization/aj;Lcrk;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcrk;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcrk;->a(J)Lcrk;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrk;->a(Ljava/lang/String;)Lcrk;

    move-result-object v1

    sget-object v0, Lcrl;->a:Lcom/twitter/util/serialization/ah;

    .line 88
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrl;

    invoke-virtual {v1, v0}, Lcrk;->a(Lcrl;)Lcrk;

    .line 89
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-wide v0, p2, Lcri;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcri;->c:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcri;->d:Lcrl;

    sget-object v2, Lcrl;->a:Lcom/twitter/util/serialization/ah;

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 97
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
    check-cast p2, Lcri;

    invoke-virtual {p0, p1, p2}, Lcrn;->a(Lcom/twitter/util/serialization/ak;Lcri;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcrn;->a()Lcrk;

    move-result-object v0

    return-object v0
.end method
