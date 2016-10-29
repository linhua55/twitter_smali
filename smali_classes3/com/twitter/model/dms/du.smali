.class Lcom/twitter/model/dms/du;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/dms/ds;",
        "Lcom/twitter/model/dms/dt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/dq;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/twitter/model/dms/du;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/dt;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/twitter/model/dms/dt;

    invoke-direct {v0}, Lcom/twitter/model/dms/dt;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/dt;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/dms/dt;->a(Ljava/lang/String;)Lcom/twitter/model/dms/dt;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 128
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/dt;->b(Ljava/util/List;)Lcom/twitter/model/dms/dt;

    .line 129
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
    .line 110
    check-cast p2, Lcom/twitter/model/dms/dt;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/du;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/dt;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/ds;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p2, Lcom/twitter/model/dms/ds;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 115
    iget-object v0, p2, Lcom/twitter/model/dms/ds;->d:Ljava/util/List;

    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 116
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
    .line 110
    check-cast p2, Lcom/twitter/model/dms/ds;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/du;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/ds;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/twitter/model/dms/du;->a()Lcom/twitter/model/dms/dt;

    move-result-object v0

    return-object v0
.end method
