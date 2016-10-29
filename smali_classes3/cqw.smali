.class Lcqw;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcqt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcqu;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcqw;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcqt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcqv;

    invoke-direct {v0}, Lcqv;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcqv;->a(Ljava/lang/String;)Lcqv;

    move-result-object v1

    const-class v0, Lcom/twitter/model/moments/MomentPageType;

    .line 70
    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/MomentPageType;

    invoke-virtual {v1, v0}, Lcqv;->a(Lcom/twitter/model/moments/MomentPageType;)Lcqv;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/z;->a:Lcom/twitter/util/serialization/ah;

    .line 71
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/z;

    invoke-virtual {v1, v0}, Lcqv;->a(Lcom/twitter/model/moments/z;)Lcqv;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/k;->a:Lcom/twitter/util/serialization/ah;

    .line 72
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    invoke-virtual {v1, v0}, Lcqv;->a(Lcom/twitter/model/moments/k;)Lcqv;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/bd;->a:Lcom/twitter/util/serialization/ah;

    .line 73
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/bd;

    invoke-virtual {v1, v0}, Lcqv;->a(Lcom/twitter/model/moments/bd;)Lcqv;

    move-result-object v1

    sget-object v0, Lcqn;->a:Lcom/twitter/util/serialization/ah;

    .line 74
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqn;

    invoke-virtual {v1, v0}, Lcqv;->a(Lcqn;)Lcqv;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/u;->a:Lcom/twitter/util/serialization/ah;

    .line 75
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/u;

    invoke-virtual {v1, v0}, Lcqv;->a(Lcom/twitter/model/moments/u;)Lcqv;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcqv;->a(J)Lcqv;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/ah;->a:Lcom/twitter/model/moments/aj;

    .line 77
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ah;

    invoke-virtual {v1, v0}, Lcqv;->a(Lcom/twitter/model/moments/ah;)Lcqv;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcqv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqt;

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcqt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p2, Lcqt;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqt;->c:Lcom/twitter/model/moments/MomentPageType;

    const-class v2, Lcom/twitter/model/moments/MomentPageType;

    .line 54
    invoke-static {v2}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqt;->d:Lcom/twitter/model/moments/z;

    sget-object v2, Lcom/twitter/model/moments/z;->a:Lcom/twitter/util/serialization/ah;

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqt;->e:Lcom/twitter/model/moments/k;

    sget-object v2, Lcom/twitter/model/moments/k;->a:Lcom/twitter/util/serialization/ah;

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqt;->f:Lcom/twitter/model/moments/bd;

    sget-object v2, Lcom/twitter/model/moments/bd;->a:Lcom/twitter/util/serialization/ah;

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqt;->g:Lcqn;

    sget-object v2, Lcqn;->a:Lcom/twitter/util/serialization/ah;

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqt;->h:Lcom/twitter/model/moments/u;

    sget-object v2, Lcom/twitter/model/moments/u;->a:Lcom/twitter/util/serialization/ah;

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcqt;->j:J

    .line 60
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqt;->i:Lcom/twitter/model/moments/ah;

    sget-object v2, Lcom/twitter/model/moments/ah;->a:Lcom/twitter/model/moments/aj;

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 62
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
    .line 49
    check-cast p2, Lcqt;

    invoke-virtual {p0, p1, p2}, Lcqw;->a(Lcom/twitter/util/serialization/ak;Lcqt;)V

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
    .line 49
    invoke-virtual {p0, p1, p2}, Lcqw;->a(Lcom/twitter/util/serialization/aj;I)Lcqt;

    move-result-object v0

    return-object v0
.end method
