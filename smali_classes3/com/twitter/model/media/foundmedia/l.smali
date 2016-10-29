.class Lcom/twitter/model/media/foundmedia/l;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/media/foundmedia/FoundMediaProvider;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/media/foundmedia/k;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/twitter/model/media/foundmedia/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/media/foundmedia/FoundMediaProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v2

    .line 89
    sget-object v0, Lcom/twitter/model/media/foundmedia/FoundMediaImageVariant;->a:Lcom/twitter/util/serialization/ah;

    .line 90
    invoke-static {p1, v0}, Lcom/twitter/util/serialization/a;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;)Landroid/util/SparseArray;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 91
    new-instance v3, Lcom/twitter/model/media/foundmedia/FoundMediaProvider;

    invoke-direct {v3, v1, v2, v0}, Lcom/twitter/model/media/foundmedia/FoundMediaProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v3
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/media/foundmedia/FoundMediaProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p2, Lcom/twitter/model/media/foundmedia/FoundMediaProvider;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 79
    iget-object v0, p2, Lcom/twitter/model/media/foundmedia/FoundMediaProvider;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 80
    iget-object v0, p2, Lcom/twitter/model/media/foundmedia/FoundMediaProvider;->d:Landroid/util/SparseArray;

    sget-object v1, Lcom/twitter/model/media/foundmedia/FoundMediaImageVariant;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/serialization/a;->a(Lcom/twitter/util/serialization/ak;Landroid/util/SparseArray;Lcom/twitter/util/serialization/ah;)V

    .line 81
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
    .line 74
    check-cast p2, Lcom/twitter/model/media/foundmedia/FoundMediaProvider;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/media/foundmedia/l;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/media/foundmedia/FoundMediaProvider;)V

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
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/media/foundmedia/l;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/media/foundmedia/FoundMediaProvider;

    move-result-object v0

    return-object v0
.end method
