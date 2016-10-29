.class Lcom/twitter/model/timeline/dj;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/timeline/dh;",
        "Lcom/twitter/model/timeline/di;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/dg;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/twitter/model/timeline/dj;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/timeline/di;
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/twitter/model/timeline/di;

    invoke-direct {v0}, Lcom/twitter/model/timeline/di;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/timeline/di;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/timeline/di;->a(I)Lcom/twitter/model/timeline/di;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/di;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/di;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/di;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/di;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    .line 196
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/di;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/di;

    move-result-object v1

    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/model/core/TwitterSocialProof;->a:Lcom/twitter/util/serialization/d;

    .line 198
    invoke-static {v0, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/di;->a(Ljava/util/Map;)Lcom/twitter/model/timeline/di;

    move-result-object v1

    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    .line 201
    invoke-static {v0, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 200
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/di;->b(Ljava/util/Map;)Lcom/twitter/model/timeline/di;

    move-result-object v2

    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 202
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 203
    invoke-static {v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 202
    invoke-virtual {v2, v0, v1}, Lcom/twitter/model/timeline/di;->a(Ljava/util/List;Ljava/util/List;)Lcom/twitter/model/timeline/di;

    .line 204
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
    .line 167
    check-cast p2, Lcom/twitter/model/timeline/di;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/timeline/dj;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/timeline/di;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/timeline/dh;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget v0, p2, Lcom/twitter/model/timeline/dh;->b:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/dh;->c:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/dh;->d:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/dh;->e:Lcom/twitter/model/timeline/al;

    sget-object v2, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/dh;->f:Ljava/util/Map;

    sget-object v2, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v3, Lcom/twitter/model/core/TwitterSocialProof;->a:Lcom/twitter/util/serialization/d;

    .line 175
    invoke-static {v2, v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/dh;->g:Ljava/util/Map;

    sget-object v2, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v3, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    .line 177
    invoke-static {v2, v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/dh;->h:Ljava/util/List;

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 179
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/timeline/dh;->i:Ljava/util/List;

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 180
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 181
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
    .line 167
    check-cast p2, Lcom/twitter/model/timeline/dh;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/timeline/dj;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/timeline/dh;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/twitter/model/timeline/dj;->a()Lcom/twitter/model/timeline/di;

    move-result-object v0

    return-object v0
.end method
