.class Lcom/twitter/library/provider/m;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/library/provider/j;",
        "Lcom/twitter/library/provider/l;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/provider/k;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/twitter/library/provider/m;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/provider/l;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/twitter/library/provider/l;

    invoke-direct {v0}, Lcom/twitter/library/provider/l;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/provider/l;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/twitter/model/core/TwitterUser;->a:Lcom/twitter/util/serialization/d;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/d;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p2, v0}, Lcom/twitter/library/provider/l;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/provider/l;

    move-result-object v1

    const-class v0, Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    .line 73
    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    .line 73
    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/l;->a(Lcom/twitter/library/database/dm/ShareHistoryTable$Type;)Lcom/twitter/library/provider/i;

    .line 75
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
    .line 55
    check-cast p2, Lcom/twitter/library/provider/l;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/provider/m;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/provider/l;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/provider/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p2, Lcom/twitter/library/provider/j;->b:Lcom/twitter/model/core/TwitterUser;

    sget-object v1, Lcom/twitter/model/core/TwitterUser;->a:Lcom/twitter/util/serialization/d;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/provider/j;->d:Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    const-class v2, Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    .line 60
    invoke-static {v2}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 61
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
    .line 55
    check-cast p2, Lcom/twitter/library/provider/j;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/provider/m;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/provider/j;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/twitter/library/provider/m;->a()Lcom/twitter/library/provider/l;

    move-result-object v0

    return-object v0
.end method
