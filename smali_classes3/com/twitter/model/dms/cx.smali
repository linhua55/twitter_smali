.class Lcom/twitter/model/dms/cx;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/dms/cu;",
        "Lcom/twitter/model/dms/cw;",
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

.method synthetic constructor <init>(Lcom/twitter/model/dms/cv;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/twitter/model/dms/cx;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/cw;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/twitter/model/dms/cw;

    invoke-direct {v0}, Lcom/twitter/model/dms/cw;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/cw;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p2, v0}, Lcom/twitter/model/dms/cw;->a(Ljava/lang/String;)Lcom/twitter/model/dms/cw;

    .line 68
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
    check-cast p2, Lcom/twitter/model/dms/cw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/cx;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/cw;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/cu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p2}, Lcom/twitter/model/dms/cu;->a(Lcom/twitter/model/dms/cu;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 74
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
    check-cast p2, Lcom/twitter/model/dms/cu;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/cx;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/cu;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/twitter/model/dms/cx;->a()Lcom/twitter/model/dms/cw;

    move-result-object v0

    return-object v0
.end method
