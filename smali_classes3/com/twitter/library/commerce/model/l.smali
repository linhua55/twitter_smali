.class public abstract Lcom/twitter/library/commerce/model/l;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/library/commerce/model/CreditCard;",
        ">",
        "Lcom/twitter/util/serialization/ae",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/library/commerce/model/CreditCard;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "TT;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/CreditCard;->d(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/CreditCard;->e(Ljava/lang/String;)V

    .line 496
    sget-object v0, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/CreditCard;->a(Ljava/lang/Integer;)V

    .line 497
    sget-object v0, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/CreditCard;->b(Ljava/lang/Integer;)V

    .line 498
    sget-object v0, Lcom/twitter/library/commerce/model/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/a;

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/CreditCard;->a(Lcom/twitter/library/commerce/model/a;)V

    .line 499
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/CreditCard;->f(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/CreditCard;->a(Z)V

    .line 501
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/CreditCard;->b(Z)V

    .line 502
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/twitter/library/commerce/model/CreditCard;->c(Z)V

    .line 503
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/CreditCard;)V
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
    .line 481
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/CreditCard;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 482
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/CreditCard;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 483
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/CreditCard;->j()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 484
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/CreditCard;->k()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 485
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/CreditCard;->l()Lcom/twitter/library/commerce/model/a;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/commerce/model/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 486
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/CreditCard;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 487
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/CreditCard;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 488
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/CreditCard;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    .line 489
    invoke-virtual {p2}, Lcom/twitter/library/commerce/model/CreditCard;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 490
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
    .line 477
    check-cast p2, Lcom/twitter/library/commerce/model/CreditCard;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/commerce/model/l;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/library/commerce/model/CreditCard;)V

    return-void
.end method
