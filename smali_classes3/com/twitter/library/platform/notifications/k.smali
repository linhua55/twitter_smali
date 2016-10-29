.class public final Lcom/twitter/library/platform/notifications/k;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/library/platform/notifications/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/library/platform/notifications/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    .line 134
    new-instance v1, Lcom/twitter/library/platform/notifications/j;

    invoke-direct {v1}, Lcom/twitter/library/platform/notifications/j;-><init>()V

    .line 135
    invoke-virtual {v1, v0}, Lcom/twitter/library/platform/notifications/j;->a(I)Lcom/twitter/library/platform/notifications/j;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/platform/notifications/j;->b(I)Lcom/twitter/library/platform/notifications/j;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/platform/notifications/j;->a(Ljava/lang/String;)Lcom/twitter/library/platform/notifications/j;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/platform/notifications/j;->b(Ljava/lang/String;)Lcom/twitter/library/platform/notifications/j;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/platform/notifications/j;->c(Ljava/lang/String;)Lcom/twitter/library/platform/notifications/j;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/platform/notifications/j;->a(J)Lcom/twitter/library/platform/notifications/j;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/platform/notifications/j;->d(Ljava/lang/String;)Lcom/twitter/library/platform/notifications/j;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->j()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/platform/notifications/j;->a([B)Lcom/twitter/library/platform/notifications/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/j;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/platform/notifications/i;

    .line 134
    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/platform/notifications/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget v0, p2, Lcom/twitter/library/platform/notifications/i;->c:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget v1, p2, Lcom/twitter/library/platform/notifications/i;->d:I

    .line 120
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/i;->e:Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/i;->f:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/i;->g:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/library/platform/notifications/i;->h:J

    .line 124
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/i;->i:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/platform/notifications/i;->j:[B

    .line 126
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b([B)Lcom/twitter/util/serialization/ak;

    .line 127
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
    .line 116
    check-cast p2, Lcom/twitter/library/platform/notifications/i;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/platform/notifications/k;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/platform/notifications/i;)V

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
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/platform/notifications/k;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/library/platform/notifications/i;

    move-result-object v0

    return-object v0
.end method
