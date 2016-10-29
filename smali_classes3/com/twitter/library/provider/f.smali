.class Lcom/twitter/library/provider/f;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/library/provider/c;",
        "Lcom/twitter/library/provider/e;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/provider/d;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/twitter/library/provider/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/provider/e;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/twitter/library/provider/e;

    invoke-direct {v0}, Lcom/twitter/library/provider/e;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/provider/e;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/twitter/library/database/dm/d;->a:Lcom/twitter/util/serialization/d;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/d;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/database/dm/d;

    invoke-virtual {p2, v0}, Lcom/twitter/library/provider/e;->a(Lcom/twitter/library/database/dm/d;)Lcom/twitter/library/provider/e;

    move-result-object v1

    const-class v0, Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    .line 49
    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    .line 49
    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/e;->a(Lcom/twitter/library/database/dm/ShareHistoryTable$Type;)Lcom/twitter/library/provider/i;

    .line 51
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
    .line 31
    check-cast p2, Lcom/twitter/library/provider/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/provider/f;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/provider/e;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/provider/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p2, Lcom/twitter/library/provider/c;->b:Lcom/twitter/library/database/dm/d;

    sget-object v1, Lcom/twitter/library/database/dm/d;->a:Lcom/twitter/util/serialization/d;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/provider/c;->d:Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    const-class v2, Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    .line 36
    invoke-static {v2}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 37
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
    .line 31
    check-cast p2, Lcom/twitter/library/provider/c;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/provider/f;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/provider/c;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/twitter/library/provider/f;->a()Lcom/twitter/library/provider/e;

    move-result-object v0

    return-object v0
.end method
