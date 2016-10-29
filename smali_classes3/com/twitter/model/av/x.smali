.class final Lcom/twitter/model/av/x;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/av/VideoCta;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/av/VideoCtaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    .line 123
    const-class v0, Lcom/twitter/model/av/VideoCtaType;

    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/x;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/av/w;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/twitter/model/av/x;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/av/VideoCta;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/twitter/model/av/x;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/VideoCtaType;

    .line 136
    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Ljava/util/Map;

    move-result-object v1

    .line 138
    new-instance v2, Lcom/twitter/model/av/VideoCta;

    invoke-direct {v2, v0, v1}, Lcom/twitter/model/av/VideoCta;-><init>(Lcom/twitter/model/av/VideoCtaType;Ljava/util/Map;)V

    return-object v2
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/av/VideoCta;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/model/av/x;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p2}, Lcom/twitter/model/av/VideoCta;->a(Lcom/twitter/model/av/VideoCta;)Lcom/twitter/model/av/VideoCtaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/twitter/util/serialization/ah;->b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 128
    invoke-static {p2}, Lcom/twitter/model/av/VideoCta;->b(Lcom/twitter/model/av/VideoCta;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ak;Ljava/util/Map;Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)V

    .line 129
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
    .line 122
    check-cast p2, Lcom/twitter/model/av/VideoCta;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/av/x;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/av/VideoCta;)V

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
    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/av/x;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/av/VideoCta;

    move-result-object v0

    return-object v0
.end method
