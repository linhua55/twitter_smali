.class Lcqf;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcqc;",
        "Lcqe;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcqd;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcqf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcqe;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcqe;

    invoke-direct {v0}, Lcqe;-><init>()V

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
    .line 59
    check-cast p2, Lcqe;

    invoke-virtual {p0, p1, p2, p3}, Lcqf;->a(Lcom/twitter/util/serialization/aj;Lcqe;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcqe;I)V
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

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcqe;->a(Ljava/lang/String;)Lcqe;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcqe;->b(Ljava/lang/String;)Lcqe;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/x;->a:Lcom/twitter/util/serialization/ah;

    .line 79
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/x;

    invoke-virtual {v1, v0}, Lcqe;->a(Lcom/twitter/model/moments/x;)Lcqe;

    .line 80
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcqc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p2, Lcqc;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqc;->c:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqc;->d:Lcom/twitter/model/moments/x;

    sget-object v2, Lcom/twitter/model/moments/x;->a:Lcom/twitter/util/serialization/ah;

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 66
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
    .line 59
    check-cast p2, Lcqc;

    invoke-virtual {p0, p1, p2}, Lcqf;->a(Lcom/twitter/util/serialization/ak;Lcqc;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcqf;->a()Lcqe;

    move-result-object v0

    return-object v0
.end method
