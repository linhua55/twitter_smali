.class Lcpr;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcpo;",
        "Lcpq;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcpp;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcpr;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcpq;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcpq;

    invoke-direct {v0}, Lcpq;-><init>()V

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
    .line 161
    check-cast p2, Lcpq;

    invoke-virtual {p0, p1, p2, p3}, Lcpr;->a(Lcom/twitter/util/serialization/aj;Lcpq;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcpq;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 173
    sget-object v0, Lcpf;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    invoke-virtual {p2, v0}, Lcpq;->a(Lcpf;)Lcpq;

    move-result-object v1

    sget-object v0, Lcps;->a:Lcom/twitter/util/serialization/ae;

    .line 174
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ae;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcps;

    invoke-virtual {v1, v0}, Lcpq;->a(Lcps;)Lcpq;

    .line 175
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcpo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p2, Lcpo;->b:Lcpf;

    sget-object v1, Lcpf;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcpo;->c:Lcps;

    sget-object v2, Lcps;->a:Lcom/twitter/util/serialization/ae;

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 182
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
    .line 161
    check-cast p2, Lcpo;

    invoke-virtual {p0, p1, p2}, Lcpr;->a(Lcom/twitter/util/serialization/ak;Lcpo;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcpr;->a()Lcpq;

    move-result-object v0

    return-object v0
.end method
