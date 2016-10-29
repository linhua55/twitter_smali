.class Lcom/twitter/library/database/dm/g;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/library/database/dm/d;",
        "Lcom/twitter/library/database/dm/f;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/database/dm/e;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/twitter/library/database/dm/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/database/dm/f;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/twitter/library/database/dm/f;

    invoke-direct {v0}, Lcom/twitter/library/database/dm/f;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/database/dm/f;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/twitter/library/database/dm/f;->a(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/database/dm/f;->a(J)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->b(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->c(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->d(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->a(Z)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/database/dm/f;->b(J)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->b(Z)Lcom/twitter/library/database/dm/f;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/TwitterUser;->a:Lcom/twitter/util/serialization/d;

    .line 88
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/database/dm/f;->a(Ljava/util/List;)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->c(Z)Lcom/twitter/library/database/dm/f;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/database/dm/f;->d(Z)Lcom/twitter/library/database/dm/f;

    .line 91
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
    .line 51
    check-cast p2, Lcom/twitter/library/database/dm/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/database/dm/g;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/database/dm/f;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/database/dm/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p2, Lcom/twitter/library/database/dm/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/library/database/dm/d;->c:J

    .line 56
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/database/dm/d;->d:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/database/dm/d;->e:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/database/dm/d;->f:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/library/database/dm/d;->g:Z

    .line 60
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/library/database/dm/d;->h:J

    .line 61
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/library/database/dm/d;->i:Z

    .line 62
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/library/database/dm/d;->j:Ljava/util/List;

    sget-object v2, Lcom/twitter/model/core/TwitterUser;->a:Lcom/twitter/util/serialization/d;

    .line 64
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/library/database/dm/d;->k:Z

    .line 65
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/library/database/dm/d;->l:Z

    .line 66
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 67
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
    .line 51
    check-cast p2, Lcom/twitter/library/database/dm/d;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/database/dm/g;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/database/dm/d;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/twitter/library/database/dm/g;->a()Lcom/twitter/library/database/dm/f;

    move-result-object v0

    return-object v0
.end method
