.class Lcom/twitter/model/businessprofiles/av;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/businessprofiles/as;",
        "Lcom/twitter/model/businessprofiles/au;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/businessprofiles/at;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/twitter/model/businessprofiles/av;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/businessprofiles/au;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/twitter/model/businessprofiles/au;

    invoke-direct {v0}, Lcom/twitter/model/businessprofiles/au;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/businessprofiles/au;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 101
    invoke-static {p1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/twitter/model/businessprofiles/au;->a(Ljava/util/List;)Lcom/twitter/model/businessprofiles/au;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/au;->a(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/au;

    .line 103
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
    .line 83
    check-cast p2, Lcom/twitter/model/businessprofiles/au;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/businessprofiles/av;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/businessprofiles/au;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/as;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p2, Lcom/twitter/model/businessprofiles/as;->b:Ljava/util/List;

    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 88
    iget-object v0, p2, Lcom/twitter/model/businessprofiles/as;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 89
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
    .line 83
    check-cast p2, Lcom/twitter/model/businessprofiles/as;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/businessprofiles/av;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/as;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/twitter/model/businessprofiles/av;->a()Lcom/twitter/model/businessprofiles/au;

    move-result-object v0

    return-object v0
.end method
