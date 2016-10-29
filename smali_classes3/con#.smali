.class Lcon;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcoj;",
        "Lcol;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcok;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcon;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcol;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcol;

    invoke-direct {v0}, Lcol;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcol;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcoa;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoa;

    .line 128
    invoke-virtual {p2, v0}, Lcol;->a(Lcoa;)Lcol;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    .line 129
    invoke-static {p1, v1}, Lcom/twitter/util/collection/e;->d(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcol;->a(Ljava/util/Set;)Lcol;

    .line 130
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
    .line 108
    check-cast p2, Lcol;

    invoke-virtual {p0, p1, p2, p3}, Lcon;->a(Lcom/twitter/util/serialization/aj;Lcol;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcoj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcoa;->a:Lcom/twitter/util/serialization/ah;

    iget-object v1, p2, Lcoj;->d:Lcoa;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 114
    iget-object v0, p2, Lcoj;->e:Ljava/util/Set;

    sget-object v1, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Set;Lcom/twitter/util/serialization/ah;)V

    .line 115
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
    .line 108
    check-cast p2, Lcoj;

    invoke-virtual {p0, p1, p2}, Lcon;->a(Lcom/twitter/util/serialization/ak;Lcoj;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcon;->a()Lcol;

    move-result-object v0

    return-object v0
.end method
