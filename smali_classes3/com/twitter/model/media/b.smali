.class Lcom/twitter/model/media/b;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/media/a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/twitter/model/media/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/twitter/model/media/b;

    invoke-direct {v0}, Lcom/twitter/model/media/b;-><init>()V

    sput-object v0, Lcom/twitter/model/media/b;->a:Lcom/twitter/model/media/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/media/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->g()F

    move-result v0

    .line 46
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    .line 47
    new-instance v2, Lcom/twitter/model/media/a;

    invoke-direct {v2, v0, v1}, Lcom/twitter/model/media/a;-><init>(FI)V

    return-object v2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/media/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget v0, p2, Lcom/twitter/model/media/a;->b:F

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(F)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/model/media/a;->c:I

    .line 38
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 39
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
    .line 31
    check-cast p2, Lcom/twitter/model/media/a;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/media/b;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/media/a;)V

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
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/media/b;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/media/a;

    move-result-object v0

    return-object v0
.end method
