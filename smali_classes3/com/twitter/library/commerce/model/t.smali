.class Lcom/twitter/library/commerce/model/t;
.super Lcom/twitter/library/commerce/model/aa;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/commerce/model/aa",
        "<",
        "Lcom/twitter/library/commerce/model/r;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/twitter/library/commerce/model/aa;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/commerce/model/s;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/twitter/library/commerce/model/t;-><init>()V

    return-void
.end method

.method private static a()Lcom/twitter/util/serialization/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/twitter/library/commerce/model/u;

    invoke-direct {v0}, Lcom/twitter/library/commerce/model/u;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/library/commerce/model/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Lcom/twitter/library/commerce/model/r;

    invoke-direct {v1}, Lcom/twitter/library/commerce/model/r;-><init>()V

    .line 226
    invoke-virtual {p0, p1, v1}, Lcom/twitter/library/commerce/model/t;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/commerce/model/y;)V

    .line 227
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->a(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->b(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->c(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/twitter/library/commerce/model/t;->a()Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->a(Lcom/twitter/library/commerce/model/r;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 231
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->d(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->e(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->a(Lcom/twitter/library/commerce/model/r;Ljava/lang/Long;)Ljava/lang/Long;

    .line 234
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->f(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->b(Lcom/twitter/library/commerce/model/r;Ljava/lang/Long;)Ljava/lang/Long;

    .line 236
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->g(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/twitter/util/serialization/i;->l:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->a(Lcom/twitter/library/commerce/model/r;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 238
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->h(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->i(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->j(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->c(Lcom/twitter/library/commerce/model/r;Ljava/lang/Long;)Ljava/lang/Long;

    .line 242
    sget-object v0, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 243
    invoke-static {v0, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    .line 242
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/twitter/library/commerce/model/r;->a(Lcom/twitter/library/commerce/model/r;Ljava/util/Map;)Ljava/util/Map;

    .line 244
    return-object v1
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Lcom/twitter/library/commerce/model/aa;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/y;)V

    .line 202
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->p(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 203
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->o(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 204
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->n(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 205
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->m(Lcom/twitter/library/commerce/model/r;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Lcom/twitter/library/commerce/model/t;->a()Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 206
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->l(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 207
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->k(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 208
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->j(Lcom/twitter/library/commerce/model/r;)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 209
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->i(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 210
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->h(Lcom/twitter/library/commerce/model/r;)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 211
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->g(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 212
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->f(Lcom/twitter/library/commerce/model/r;)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->l:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 213
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->e(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 214
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->d(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 215
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->c(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 216
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->b(Lcom/twitter/library/commerce/model/r;)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 217
    invoke-static {p2}, Lcom/twitter/library/commerce/model/r;->a(Lcom/twitter/library/commerce/model/r;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    sget-object v3, Lcom/twitter/util/serialization/i;->i:Lcom/twitter/util/serialization/ah;

    .line 218
    invoke-static {v2, v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 219
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    check-cast p2, Lcom/twitter/library/commerce/model/r;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/commerce/model/t;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/r;)V

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
    .line 197
    check-cast p2, Lcom/twitter/library/commerce/model/r;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/commerce/model/t;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/r;)V

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
    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/commerce/model/t;->a(Lcom/twitter/util/serialization/aj;I)Lcom/twitter/library/commerce/model/r;

    move-result-object v0

    return-object v0
.end method
