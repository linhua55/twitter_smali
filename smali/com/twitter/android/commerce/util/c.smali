.class public Lcom/twitter/android/commerce/util/c;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/CreditCard;
    .locals 1

    .prologue
    .line 223
    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/twitter/library/commerce/model/am;->a()Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/library/commerce/model/CreditCard;Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/a;
    .locals 6

    .prologue
    .line 257
    if-eqz p1, :cond_1

    .line 258
    invoke-virtual {p1}, Lcom/twitter/library/commerce/model/am;->h()[Lcom/twitter/library/commerce/model/a;

    move-result-object v2

    .line 259
    if-eqz v2, :cond_1

    .line 260
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 261
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/twitter/library/commerce/model/CreditCard;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    :goto_1
    return-object v0

    .line 260
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/commerce/model/CreditCard$Type;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 272
    const-string/jumbo v0, "/"

    .line 273
    if-eqz p1, :cond_2

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    const/4 v0, 0x0

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/CreditCard$Type;

    .line 277
    if-lez v1, :cond_0

    .line 278
    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    invoke-static {p0, v0}, Lcom/twitter/library/commerce/model/CreditCard$Type;->a(Landroid/content/Context;Lcom/twitter/library/commerce/model/CreditCard$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 282
    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    const-string/jumbo v0, "USD"

    invoke-static {p0, v0}, Lcom/twitter/android/commerce/util/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 455
    check-cast p0, Ljava/lang/String;

    .line 457
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-static {v1, p1}, Lcom/twitter/android/commerce/util/c;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 462
    :cond_0
    :goto_0
    return-object v0

    .line 459
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    const-string/jumbo v0, "USD"

    invoke-static {p0, v0}, Lcom/twitter/android/commerce/util/c;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 489
    new-instance v0, Ljava/math/BigDecimal;

    const-wide/32 v2, 0xf4240

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 490
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 492
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMM dd, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 158
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 398
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-object v0

    .line 399
    :catch_0
    move-exception v0

    .line 401
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    if-eqz p0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settings:payment_settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buy_now::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lclm;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclm;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 383
    invoke-virtual {p0}, Lclm;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    invoke-virtual {p0, v0}, Lclm;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 385
    instance-of v4, v1, Lcln;

    if-eqz v4, :cond_0

    .line 386
    check-cast v1, Lcln;

    .line 387
    iget-object v1, v1, Lcln;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 392
    :cond_1
    return-object v2
.end method

.method public static a(Lclm;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclm;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 469
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 470
    invoke-static {v3, p0}, Lcln;->a(Ljava/lang/String;Lclm;)Lcln;

    move-result-object v3

    .line 471
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcln;->a:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 472
    iget-object v3, v3, Lcln;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_1
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    if-eqz p0, :cond_0

    .line 373
    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Lcom/twitter/library/commerce/model/a;Lcom/twitter/library/commerce/model/m;Ljava/lang/String;Lcom/twitter/library/commerce/model/CreditCard;Ljava/util/List;IZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/library/card/CardContext;",
            "Ljava/lang/String;",
            "Lcom/twitter/library/commerce/model/a;",
            "Lcom/twitter/library/commerce/model/m;",
            "Ljava/lang/String;",
            "Lcom/twitter/library/commerce/model/CreditCard;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZZZ)V"
        }
    .end annotation

    .prologue
    .line 325
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 326
    const-string/jumbo v0, "store_profile:payment_method:start"

    .line 327
    invoke-static {p9, v0}, Lcom/twitter/android/commerce/util/c;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {p0, p1, v0, p2}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->V:Lcom/twitter/library/api/PromotedEvent;

    invoke-static {p0, p1, v0}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V

    .line 331
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/commerce/view/ProfileEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 334
    const-string/jumbo v2, "commerce_address_object"

    sget-object v3, Lcom/twitter/library/commerce/model/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v1, v2, p3, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 336
    const-string/jumbo v2, "commerce_profile_email"

    sget-object v3, Lcom/twitter/library/commerce/model/m;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v1, v2, p4, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 337
    const-string/jumbo v2, "commerce_buynow_card_context"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    const-string/jumbo v2, "commerce_launched_from_settings"

    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const-string/jumbo v2, "commerce_phone_required"

    invoke-virtual {v1, v2, p10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    const-string/jumbo v2, "commerce_billing_required"

    invoke-virtual {v1, v2, p11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    if-eqz p7, :cond_1

    instance-of v2, p7, Ljava/io/Serializable;

    if-eqz v2, :cond_1

    .line 342
    const-string/jumbo v2, "commerce_allowed_states_for_item"

    check-cast p7, Ljava/io/Serializable;

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 346
    :cond_1
    if-eqz p6, :cond_2

    invoke-static {}, Lcom/twitter/android/commerce/util/c;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    const-string/jumbo v2, "commerce_partial_card_object"

    sget-object v3, Lcom/twitter/library/commerce/model/CreditCard;->d:Lcom/twitter/util/serialization/ah;

    invoke-static {v1, v2, p6, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 350
    :cond_2
    invoke-static {v1, p5}, Lcom/twitter/android/commerce/network/e;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v0, p8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 75
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 79
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Integer;IZ)V
    .locals 6

    .prologue
    .line 109
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Integer;IZZ)V

    .line 110
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Integer;IZZ)V
    .locals 6

    .prologue
    .line 119
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Integer;Ljava/lang/String;ZZ)V

    .line 121
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 114
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Integer;Ljava/lang/String;ZZ)V

    .line 115
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Integer;Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 125
    const v0, 0x7f13020d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const v0, 0x7f13020c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    if-eqz p2, :cond_2

    .line 131
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :goto_0
    if-nez p4, :cond_0

    .line 136
    const v0, 0x7f13020a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_0
    if-eqz p5, :cond_1

    .line 141
    const v0, 0x7f13020b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_1
    return-void

    .line 133
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/api/PromotedEvent;)V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->af:Lcom/twitter/library/api/PromotedEvent;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->ab:Lcom/twitter/library/api/PromotedEvent;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->aj:Lcom/twitter/library/api/PromotedEvent;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->al:Lcom/twitter/library/api/PromotedEvent;

    if-eq p2, v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/twitter/library/card/CardContext;->i()Lcss;

    move-result-object v0

    .line 174
    :goto_1
    if-eqz v0, :cond_0

    .line 175
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V

    goto :goto_0

    .line 173
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 96
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 97
    invoke-virtual {v2, p0, p1, v3, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 98
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 99
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 100
    invoke-static {p3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 103
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 105
    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 180
    const-string/jumbo v0, "commerce_enabled"

    invoke-static {v0}, Lcom/twitter/android/commerce/util/c;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 1

    .prologue
    .line 357
    const-string/jumbo v0, "debug_always_require_phone"

    invoke-static {p0, p1, v0}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;ZLjava/lang/String;)Z
    .locals 2

    .prologue
    .line 365
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 366
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 367
    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 406
    .line 407
    invoke-static {p0, p1}, Lcom/twitter/android/commerce/util/c;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    const/4 p2, 0x0

    .line 421
    :cond_0
    :goto_0
    return p2

    .line 411
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/4 p2, 0x1

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 417
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public static b(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/CreditCard;
    .locals 5

    .prologue
    .line 230
    if-eqz p0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/twitter/library/commerce/model/am;->e()[Lcom/twitter/library/commerce/model/CreditCard;

    move-result-object v2

    .line 232
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 233
    invoke-virtual {v0}, Lcom/twitter/library/commerce/model/CreditCard;->o()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    :goto_1
    return-object v0

    .line 232
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Lclm;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 500
    const-string/jumbo v0, "product_url"

    invoke-static {v0, p0}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v2

    .line 501
    const-string/jumbo v0, "mobile_url_params"

    invoke-static {v0, p0}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    .line 502
    const/4 v0, 0x0

    .line 503
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 509
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x3f

    .line 512
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    :goto_2
    return-object v0

    .line 511
    :cond_1
    const/16 v1, 0x26

    goto :goto_1

    .line 506
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 184
    const-string/jumbo v0, "commerce_allow_unverified_email_address"

    invoke-static {v0}, Lcom/twitter/android/commerce/util/c;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Z)Z
    .locals 1

    .prologue
    .line 361
    const-string/jumbo v0, "debug_always_require_billing"

    invoke-static {p0, p1, v0}, Lcom/twitter/android/commerce/util/c;->a(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 192
    invoke-static {p0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v3

    .line 193
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v1

    .line 195
    :goto_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    .line 194
    goto :goto_0
.end method

.method public static c(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/m;
    .locals 1

    .prologue
    .line 242
    if-eqz p0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/twitter/library/commerce/model/am;->c()Lcom/twitter/library/commerce/model/m;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 188
    const-string/jumbo v0, "commerce_order_history_enabled"

    invoke-static {v0}, Lcom/twitter/android/commerce/util/c;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(Lcom/twitter/library/commerce/model/am;)Lcom/twitter/library/commerce/model/af;
    .locals 1

    .prologue
    .line 249
    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/twitter/library/commerce/model/am;->d()Lcom/twitter/library/commerce/model/af;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 199
    const-string/jumbo v0, "commerce_offers_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 203
    const-string/jumbo v2, "commerce_upgrade_profile"

    .line 204
    invoke-static {v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v3

    .line 205
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v1

    .line 208
    :goto_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    .line 206
    goto :goto_0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 212
    const-string/jumbo v0, "commerce_use_v2_api"

    .line 213
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 215
    return v0
.end method
