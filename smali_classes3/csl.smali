.class final Lcsl;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcsi;",
        "Lcsk;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcsj;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcsl;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcsk;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcsk;

    invoke-direct {v0}, Lcsk;-><init>()V

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
    .line 86
    check-cast p2, Lcsk;

    invoke-virtual {p0, p1, p2, p3}, Lcsl;->a(Lcom/twitter/util/serialization/aj;Lcsk;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcsk;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcse;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcse;

    invoke-virtual {p2, v0}, Lcsk;->a(Lcse;)Lcsk;

    move-result-object v1

    sget-object v0, Lcse;->a:Lcom/twitter/util/serialization/ah;

    .line 97
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcse;

    invoke-virtual {v1, v0}, Lcsk;->b(Lcse;)Lcsk;

    move-result-object v1

    sget-object v0, Lcse;->a:Lcom/twitter/util/serialization/ah;

    .line 98
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcse;

    invoke-virtual {v1, v0}, Lcsk;->c(Lcse;)Lcsk;

    move-result-object v1

    sget-object v0, Lcrt;->b:Lcom/twitter/util/serialization/ah;

    .line 99
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcsk;->a(Ljava/util/List;)Lcsk;

    .line 100
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcsi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p2, Lcsi;->b:Lcse;

    sget-object v1, Lcse;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcsi;->c:Lcse;

    sget-object v2, Lcse;->a:Lcom/twitter/util/serialization/ah;

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcsi;->d:Lcse;

    sget-object v2, Lcse;->a:Lcom/twitter/util/serialization/ah;

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcsi;->e:Ljava/util/List;

    sget-object v2, Lcrt;->b:Lcom/twitter/util/serialization/ah;

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 109
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
    .line 86
    check-cast p2, Lcsi;

    invoke-virtual {p0, p1, p2}, Lcsl;->a(Lcom/twitter/util/serialization/ak;Lcsi;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcsl;->a()Lcsk;

    move-result-object v0

    return-object v0
.end method
