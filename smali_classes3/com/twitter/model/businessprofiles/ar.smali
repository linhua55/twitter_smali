.class Lcom/twitter/model/businessprofiles/ar;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/businessprofiles/ap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/businessprofiles/aq;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/twitter/model/businessprofiles/ar;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/businessprofiles/ap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v2, Lcom/twitter/model/businessprofiles/ap;

    sget-object v0, Lcom/twitter/util/serialization/i;->q:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    sget-object v1, Lcom/twitter/util/serialization/i;->q:Lcom/twitter/util/serialization/ah;

    .line 167
    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->b(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Lcom/twitter/model/businessprofiles/ap;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 166
    return-object v2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/ap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p2, Lcom/twitter/model/businessprofiles/ap;->b:Ljava/util/Date;

    sget-object v1, Lcom/twitter/util/serialization/i;->q:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/ap;->c:Ljava/util/Date;

    sget-object v2, Lcom/twitter/util/serialization/i;->q:Lcom/twitter/util/serialization/ah;

    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 160
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
    .line 153
    check-cast p2, Lcom/twitter/model/businessprofiles/ap;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/businessprofiles/ar;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/ap;)V

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
    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/businessprofiles/ar;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/businessprofiles/ap;

    move-result-object v0

    return-object v0
.end method
