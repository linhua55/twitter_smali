.class Lcom/twitter/refresh/widget/c;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/refresh/widget/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/refresh/widget/b;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/twitter/refresh/widget/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/refresh/widget/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/twitter/refresh/widget/a;

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/refresh/widget/a;-><init>(IJI)V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/refresh/widget/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget v0, p2, Lcom/twitter/refresh/widget/a;->b:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/refresh/widget/a;->c:J

    .line 46
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/refresh/widget/a;->d:I

    .line 47
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 48
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
    .line 40
    check-cast p2, Lcom/twitter/refresh/widget/a;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/refresh/widget/c;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/refresh/widget/a;)V

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
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/twitter/refresh/widget/c;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/refresh/widget/a;

    move-result-object v0

    return-object v0
.end method
