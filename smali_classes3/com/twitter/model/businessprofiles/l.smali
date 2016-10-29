.class Lcom/twitter/model/businessprofiles/l;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/businessprofiles/i;",
        "Lcom/twitter/model/businessprofiles/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/businessprofiles/af;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    .line 306
    sget-object v0, Lcom/twitter/model/businessprofiles/af;->a:Lcom/twitter/util/serialization/ah;

    .line 307
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/businessprofiles/j;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/twitter/model/businessprofiles/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/businessprofiles/k;
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/twitter/model/businessprofiles/k;

    invoke-direct {v0}, Lcom/twitter/model/businessprofiles/k;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/businessprofiles/k;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/businessprofiles/k;->a(Ljava/util/TimeZone;)Lcom/twitter/model/businessprofiles/k;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 332
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/businessprofiles/k;->a(Ljava/util/List;)Lcom/twitter/model/businessprofiles/k;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 333
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/businessprofiles/k;->b(Ljava/util/List;)Lcom/twitter/model/businessprofiles/k;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 334
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/businessprofiles/k;->c(Ljava/util/List;)Lcom/twitter/model/businessprofiles/k;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 335
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/businessprofiles/k;->d(Ljava/util/List;)Lcom/twitter/model/businessprofiles/k;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 336
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/businessprofiles/k;->e(Ljava/util/List;)Lcom/twitter/model/businessprofiles/k;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 337
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/businessprofiles/k;->f(Ljava/util/List;)Lcom/twitter/model/businessprofiles/k;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 338
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/businessprofiles/k;->g(Ljava/util/List;)Lcom/twitter/model/businessprofiles/k;

    .line 339
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
    .line 305
    check-cast p2, Lcom/twitter/model/businessprofiles/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/businessprofiles/l;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/businessprofiles/k;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p2, Lcom/twitter/model/businessprofiles/i;->c:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/i;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/i;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 314
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/i;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 315
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/i;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 316
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/i;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 317
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/i;->i:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/businessprofiles/i;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/model/businessprofiles/l;->a:Lcom/twitter/util/serialization/ah;

    .line 319
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 320
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
    .line 305
    check-cast p2, Lcom/twitter/model/businessprofiles/i;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/businessprofiles/l;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/businessprofiles/i;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/twitter/model/businessprofiles/l;->a()Lcom/twitter/model/businessprofiles/k;

    move-result-object v0

    return-object v0
.end method
