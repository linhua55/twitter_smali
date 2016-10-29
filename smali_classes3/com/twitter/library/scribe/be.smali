.class Lcom/twitter/library/scribe/be;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/library/scribe/bb;",
        "Lcom/twitter/library/scribe/bd;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/scribe/bc;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/twitter/library/scribe/be;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/scribe/bd;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/twitter/library/scribe/bd;

    invoke-direct {v0}, Lcom/twitter/library/scribe/bd;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/scribe/bd;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lcom/twitter/library/scribe/bf;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/scribe/bd;->a(Ljava/util/List;)Lcom/twitter/library/scribe/bd;

    .line 101
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
    .line 82
    check-cast p2, Lcom/twitter/library/scribe/bd;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/scribe/be;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/scribe/bd;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/scribe/bb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p2, Lcom/twitter/library/scribe/bb;->b:Ljava/util/List;

    sget-object v1, Lcom/twitter/library/scribe/bf;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/List;Lcom/twitter/util/serialization/ah;)V

    .line 94
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
    .line 82
    check-cast p2, Lcom/twitter/library/scribe/bb;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/scribe/be;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/scribe/bb;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/twitter/library/scribe/be;->a()Lcom/twitter/library/scribe/bd;

    move-result-object v0

    return-object v0
.end method
