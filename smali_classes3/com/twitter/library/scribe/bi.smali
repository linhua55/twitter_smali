.class Lcom/twitter/library/scribe/bi;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/library/scribe/bf;",
        "Lcom/twitter/library/scribe/bh;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/scribe/bg;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/twitter/library/scribe/bi;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/scribe/bh;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/twitter/library/scribe/bh;

    invoke-direct {v0}, Lcom/twitter/library/scribe/bh;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/scribe/bh;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/library/scribe/bh;->a(J)Lcom/twitter/library/scribe/bh;

    .line 97
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
    .line 80
    check-cast p2, Lcom/twitter/library/scribe/bh;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/scribe/bi;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/scribe/bh;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/scribe/bf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-wide v0, p2, Lcom/twitter/library/scribe/bf;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    .line 91
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
    .line 80
    check-cast p2, Lcom/twitter/library/scribe/bf;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/scribe/bi;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/scribe/bf;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/twitter/library/scribe/bi;->a()Lcom/twitter/library/scribe/bh;

    move-result-object v0

    return-object v0
.end method
