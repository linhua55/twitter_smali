.class Lcom/twitter/model/dms/y;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/dms/w;",
        "Lcom/twitter/model/dms/x;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/t;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/twitter/model/dms/y;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/x;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/twitter/model/dms/x;

    invoke-direct {v0}, Lcom/twitter/model/dms/x;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/x;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/dms/x;->a(Ljava/lang/String;)Lcom/twitter/model/dms/x;

    .line 91
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
    .line 79
    check-cast p2, Lcom/twitter/model/dms/x;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/y;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/x;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p2}, Lcom/twitter/model/dms/w;->a(Lcom/twitter/model/dms/w;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 84
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
    .line 79
    check-cast p2, Lcom/twitter/model/dms/w;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/y;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/w;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/twitter/model/dms/y;->a()Lcom/twitter/model/dms/x;

    move-result-object v0

    return-object v0
.end method
