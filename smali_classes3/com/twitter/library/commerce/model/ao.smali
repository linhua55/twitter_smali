.class Lcom/twitter/library/commerce/model/ao;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ae",
        "<",
        "Lcom/twitter/library/commerce/model/am;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/commerce/model/an;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/twitter/library/commerce/model/ao;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/library/commerce/model/am;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Lcom/twitter/library/commerce/model/am;

    invoke-direct {v1}, Lcom/twitter/library/commerce/model/am;-><init>()V

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 199
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    invoke-static {v1, v2}, Lcom/twitter/library/commerce/model/am;->a(Lcom/twitter/library/commerce/model/am;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    invoke-static {v1, v2}, Lcom/twitter/library/commerce/model/am;->b(Lcom/twitter/library/commerce/model/am;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lcom/twitter/library/commerce/model/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    invoke-static {v1, v2}, Lcom/twitter/library/commerce/model/am;->c(Lcom/twitter/library/commerce/model/am;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lcom/twitter/library/commerce/model/m;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    invoke-static {v1, v2}, Lcom/twitter/library/commerce/model/am;->d(Lcom/twitter/library/commerce/model/am;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lcom/twitter/library/commerce/model/af;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->c(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    invoke-static {v1, v2}, Lcom/twitter/library/commerce/model/am;->e(Lcom/twitter/library/commerce/model/am;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 208
    sget-object v0, Lcom/twitter/library/commerce/model/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/a;

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/am;->a(Lcom/twitter/library/commerce/model/am;Lcom/twitter/library/commerce/model/a;)Lcom/twitter/library/commerce/model/a;

    .line 209
    sget-object v0, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/CreditCard;

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/am;->a(Lcom/twitter/library/commerce/model/am;Lcom/twitter/library/commerce/model/CreditCard;)Lcom/twitter/library/commerce/model/CreditCard;

    .line 210
    sget-object v0, Lcom/twitter/library/commerce/model/m;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/m;

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/am;->a(Lcom/twitter/library/commerce/model/am;Lcom/twitter/library/commerce/model/m;)Lcom/twitter/library/commerce/model/m;

    .line 211
    sget-object v0, Lcom/twitter/library/commerce/model/af;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/af;

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/am;->a(Lcom/twitter/library/commerce/model/am;Lcom/twitter/library/commerce/model/af;)Lcom/twitter/library/commerce/model/af;

    .line 212
    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/am;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p2}, Lcom/twitter/library/commerce/model/am;->i(Lcom/twitter/library/commerce/model/am;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    invoke-static {v1}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 182
    invoke-static {p2}, Lcom/twitter/library/commerce/model/am;->h(Lcom/twitter/library/commerce/model/am;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    .line 183
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 184
    invoke-static {p2}, Lcom/twitter/library/commerce/model/am;->g(Lcom/twitter/library/commerce/model/am;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 185
    invoke-static {p2}, Lcom/twitter/library/commerce/model/am;->f(Lcom/twitter/library/commerce/model/am;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/m;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 186
    invoke-static {p2}, Lcom/twitter/library/commerce/model/am;->e(Lcom/twitter/library/commerce/model/am;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/af;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 187
    invoke-static {p2}, Lcom/twitter/library/commerce/model/am;->d(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/a;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 188
    invoke-static {p2}, Lcom/twitter/library/commerce/model/am;->c(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 189
    invoke-static {p2}, Lcom/twitter/library/commerce/model/am;->b(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/m;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/m;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 190
    invoke-static {p2}, Lcom/twitter/library/commerce/model/am;->a(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/af;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/af;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 191
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
    .line 178
    check-cast p2, Lcom/twitter/library/commerce/model/am;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/commerce/model/ao;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/am;)V

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
    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/commerce/model/ao;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/library/commerce/model/am;

    move-result-object v0

    return-object v0
.end method
