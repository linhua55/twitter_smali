.class public Lcqi;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcqg;",
        "Lcqh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcqh;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcqh;

    invoke-direct {v0}, Lcqh;-><init>()V

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
    .line 70
    check-cast p2, Lcqh;

    invoke-virtual {p0, p1, p2, p3}, Lcqi;->a(Lcom/twitter/util/serialization/aj;Lcqh;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcqh;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcqt;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqt;

    invoke-virtual {p2, v0}, Lcqh;->a(Lcqt;)Lcqh;

    move-result-object v1

    const-class v0, Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 82
    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-virtual {v1, v0}, Lcqh;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcqh;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/model/moments/ak;->a(Ljava/lang/String;)Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcqh;->a(Lcom/twitter/model/moments/ak;)Lcqh;

    .line 84
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcqg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p2, Lcqg;->b:Lcqt;

    sget-object v1, Lcqt;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqg;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    const-class v2, Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 90
    invoke-static {v2}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcqg;->d:Lcom/twitter/model/moments/ak;

    .line 91
    invoke-virtual {v1}, Lcom/twitter/model/moments/ak;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 92
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
    .line 70
    check-cast p2, Lcqg;

    invoke-virtual {p0, p1, p2}, Lcqi;->a(Lcom/twitter/util/serialization/ak;Lcqg;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcqi;->a()Lcqh;

    move-result-object v0

    return-object v0
.end method
