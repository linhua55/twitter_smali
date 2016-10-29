.class public Lcom/twitter/model/livevideo/b;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/model/livevideo/a;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/livevideo/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    .line 109
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    .line 110
    sget-object v0, Lcom/twitter/model/livevideo/BroadcastState;->d:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/livevideo/BroadcastState;

    .line 111
    new-instance v4, Lcom/twitter/model/livevideo/c;

    invoke-direct {v4}, Lcom/twitter/model/livevideo/c;-><init>()V

    .line 112
    invoke-virtual {v4, v2, v3}, Lcom/twitter/model/livevideo/c;->a(J)Lcom/twitter/model/livevideo/c;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v1}, Lcom/twitter/model/livevideo/c;->a(Ljava/lang/String;)Lcom/twitter/model/livevideo/c;

    move-result-object v1

    sget-object v2, Lcom/twitter/model/livevideo/BroadcastState;->b:Lcom/twitter/model/livevideo/BroadcastState;

    .line 114
    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/livevideo/BroadcastState;

    invoke-virtual {v1, v0}, Lcom/twitter/model/livevideo/c;->a(Lcom/twitter/model/livevideo/BroadcastState;)Lcom/twitter/model/livevideo/c;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/twitter/model/livevideo/c;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/livevideo/a;

    .line 111
    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/livevideo/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-wide v0, p2, Lcom/twitter/model/livevideo/a;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/livevideo/a;->c:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/livevideo/a;->d:Lcom/twitter/model/livevideo/BroadcastState;

    sget-object v2, Lcom/twitter/model/livevideo/BroadcastState;->d:Lcom/twitter/util/serialization/ah;

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 102
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
    .line 95
    check-cast p2, Lcom/twitter/model/livevideo/a;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/livevideo/b;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/livevideo/a;)V

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
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/livevideo/b;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/model/livevideo/a;

    move-result-object v0

    return-object v0
.end method
