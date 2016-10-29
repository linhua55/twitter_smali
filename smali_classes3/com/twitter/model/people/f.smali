.class Lcom/twitter/model/people/f;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/people/am;",
        "Lcom/twitter/model/people/ao;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/people/b;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/twitter/model/people/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/people/ao;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/twitter/model/people/ao;

    invoke-direct {v0}, Lcom/twitter/model/people/ao;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/people/ao;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0}, Lcom/twitter/model/core/cv;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 109
    invoke-virtual {p2, v0}, Lcom/twitter/model/people/ao;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/people/ao;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ao;->a(Ljava/lang/String;)Lcom/twitter/model/people/ao;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ao;->b(Ljava/lang/String;)Lcom/twitter/model/people/ao;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ao;->a(Z)Lcom/twitter/model/people/ao;

    .line 115
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
    .line 88
    check-cast p2, Lcom/twitter/model/people/ao;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/people/f;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/people/ao;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/people/am;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p2, Lcom/twitter/model/people/am;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/people/am;->b:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/people/am;->c:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-boolean v1, p2, Lcom/twitter/model/people/am;->d:Z

    .line 96
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 97
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
    .line 88
    check-cast p2, Lcom/twitter/model/people/am;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/people/f;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/people/am;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/twitter/model/people/f;->a()Lcom/twitter/model/people/ao;

    move-result-object v0

    return-object v0
.end method
