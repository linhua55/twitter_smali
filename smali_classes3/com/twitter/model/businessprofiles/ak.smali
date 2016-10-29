.class Lcom/twitter/model/businessprofiles/ak;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/businessprofiles/ai;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/businessprofiles/ap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    .line 55
    sget-object v0, Lcom/twitter/model/businessprofiles/ap;->a:Lcom/twitter/util/serialization/ah;

    .line 56
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/businessprofiles/ak;->a:Lcom/twitter/util/serialization/ah;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/businessprofiles/aj;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/model/businessprofiles/ak;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/businessprofiles/ai;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/twitter/model/businessprofiles/i;->a:Lcom/twitter/util/serialization/d;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/d;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/businessprofiles/i;

    .line 70
    iget-object v1, p0, Lcom/twitter/model/businessprofiles/ak;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 71
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v2

    .line 72
    new-instance v3, Lcom/twitter/model/businessprofiles/ai;

    invoke-direct {v3, v0, v1, v2}, Lcom/twitter/model/businessprofiles/ai;-><init>(Lcom/twitter/model/businessprofiles/i;Ljava/util/List;Z)V

    return-object v3
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/ai;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p2, Lcom/twitter/model/businessprofiles/ai;->b:Lcom/twitter/model/businessprofiles/i;

    sget-object v1, Lcom/twitter/model/businessprofiles/i;->a:Lcom/twitter/util/serialization/d;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/ai;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/model/businessprofiles/ak;->a:Lcom/twitter/util/serialization/ah;

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 62
    invoke-static {p2}, Lcom/twitter/model/businessprofiles/ai;->a(Lcom/twitter/model/businessprofiles/ai;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 63
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
    .line 54
    check-cast p2, Lcom/twitter/model/businessprofiles/ai;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/businessprofiles/ak;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/ai;)V

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
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/businessprofiles/ak;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/businessprofiles/ai;

    move-result-object v0

    return-object v0
.end method
