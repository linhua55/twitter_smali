.class public abstract Lcom/twitter/library/commerce/model/aa;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/library/commerce/model/y;",
        ">",
        "Lcom/twitter/util/serialization/ae",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/commerce/model/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->k(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->l(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->m(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->n(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->o(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->p(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->q(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->a(I)V

    .line 196
    sget-object v0, Lcom/twitter/util/serialization/i;->l:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->b(Ljava/math/BigDecimal;)V

    .line 197
    sget-object v0, Lcom/twitter/util/serialization/i;->l:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->c(Ljava/math/BigDecimal;)V

    .line 198
    sget-object v0, Lcom/twitter/util/serialization/i;->l:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->d(Ljava/math/BigDecimal;)V

    .line 199
    sget-object v0, Lcom/twitter/library/commerce/model/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/a;

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->a(Lcom/twitter/library/commerce/model/a;)V

    .line 200
    sget-object v0, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/CreditCard;

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/y;->a(Lcom/twitter/library/commerce/model/CreditCard;)V

    .line 201
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 172
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 173
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 174
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 175
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 176
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 177
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 178
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 179
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->r()Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->l:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 180
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->s()Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->l:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 181
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->v()Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->l:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 182
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->t()Lcom/twitter/library/commerce/model/a;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 183
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/y;->u()Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 184
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
    .line 168
    check-cast p2, Lcom/twitter/library/commerce/model/y;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/commerce/model/aa;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/y;)V

    return-void
.end method
