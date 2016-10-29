.class Lcom/twitter/model/businessprofiles/c;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/businessprofiles/a;",
        "Lcom/twitter/model/businessprofiles/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/businessprofiles/b;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/twitter/model/businessprofiles/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/businessprofiles/d;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/twitter/model/businessprofiles/d;

    invoke-direct {v0}, Lcom/twitter/model/businessprofiles/d;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/businessprofiles/d;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/businessprofiles/d;->a(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/d;

    move-result-object v0

    .line 159
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/d;->b(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/d;

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/d;->c(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/d;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/d;->d(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/d;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/d;->e(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/d;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/d;->f(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/d;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/d;->g(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/d;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/geo/d;->a:Lcom/twitter/util/serialization/ah;

    .line 165
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/d;

    invoke-virtual {v1, v0}, Lcom/twitter/model/businessprofiles/d;->a(Lcom/twitter/model/geo/d;)Lcom/twitter/model/businessprofiles/d;

    .line 166
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
    .line 136
    check-cast p2, Lcom/twitter/model/businessprofiles/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/businessprofiles/c;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/businessprofiles/d;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p2, Lcom/twitter/model/businessprofiles/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/a;->c:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/a;->d:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/a;->e:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/a;->f:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/a;->g:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/a;->h:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/a;->i:Lcom/twitter/model/geo/d;

    sget-object v2, Lcom/twitter/model/geo/d;->a:Lcom/twitter/util/serialization/ah;

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 147
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
    .line 136
    check-cast p2, Lcom/twitter/model/businessprofiles/a;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/businessprofiles/c;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/a;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/twitter/model/businessprofiles/c;->a()Lcom/twitter/model/businessprofiles/d;

    move-result-object v0

    return-object v0
.end method
