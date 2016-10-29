.class public abstract Lcom/twitter/library/provider/cn;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".permission.RESTRICTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/provider/cn;->a:Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "AVATARS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/provider/cn;->b:Ljava/lang/String;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".provider.TwitterProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/provider/cn;->d:Ljava/lang/String;

    .line 348
    sget-object v0, Lcom/twitter/library/provider/cn;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/provider/cn;->e:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;
    .locals 3

    .prologue
    .line 351
    const-string/jumbo v0, "ownerId"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 397
    packed-switch p0, :pswitch_data_0

    .line 464
    :pswitch_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    return-object v0

    .line 399
    :pswitch_1
    sget-object v0, Lcom/twitter/library/provider/dj;->b:Landroid/net/Uri;

    goto :goto_0

    .line 403
    :pswitch_2
    sget-object v0, Lcom/twitter/library/provider/dj;->c:Landroid/net/Uri;

    goto :goto_0

    .line 407
    :pswitch_3
    sget-object v0, Lcom/twitter/library/provider/dj;->d:Landroid/net/Uri;

    goto :goto_0

    .line 411
    :pswitch_4
    sget-object v0, Lcom/twitter/library/provider/dj;->e:Landroid/net/Uri;

    goto :goto_0

    .line 415
    :pswitch_5
    sget-object v0, Lcom/twitter/library/provider/dj;->f:Landroid/net/Uri;

    goto :goto_0

    .line 419
    :pswitch_6
    sget-object v0, Lcom/twitter/library/provider/dj;->g:Landroid/net/Uri;

    goto :goto_0

    .line 423
    :pswitch_7
    sget-object v0, Lcom/twitter/library/provider/dj;->i:Landroid/net/Uri;

    goto :goto_0

    .line 427
    :pswitch_8
    sget-object v0, Lcom/twitter/library/provider/dj;->j:Landroid/net/Uri;

    goto :goto_0

    .line 431
    :pswitch_9
    sget-object v0, Lcom/twitter/library/provider/dj;->k:Landroid/net/Uri;

    goto :goto_0

    .line 435
    :pswitch_a
    sget-object v0, Lcom/twitter/library/provider/dj;->l:Landroid/net/Uri;

    goto :goto_0

    .line 439
    :pswitch_b
    sget-object v0, Lcom/twitter/library/provider/dj;->m:Landroid/net/Uri;

    goto :goto_0

    .line 443
    :pswitch_c
    sget-object v0, Lcom/twitter/library/provider/dj;->n:Landroid/net/Uri;

    goto :goto_0

    .line 447
    :pswitch_d
    sget-object v0, Lcom/twitter/library/provider/dj;->o:Landroid/net/Uri;

    goto :goto_0

    .line 451
    :pswitch_e
    sget-object v0, Lcom/twitter/library/provider/dj;->p:Landroid/net/Uri;

    goto :goto_0

    .line 455
    :pswitch_f
    sget-object v0, Lcom/twitter/library/provider/dj;->q:Landroid/net/Uri;

    goto :goto_0

    .line 459
    :pswitch_10
    sget-object v0, Lcom/twitter/library/provider/dj;->h:Landroid/net/Uri;

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_c
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_9
        :pswitch_10
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static a(JJ)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 366
    sget-object v0, Lcom/twitter/library/provider/dg;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 367
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ownerId"

    .line 368
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 366
    return-object v0
.end method

.method public static a(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static b(JJ)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 380
    sget-object v0, Lcom/twitter/library/provider/dg;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 381
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ownerId"

    .line 382
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 380
    return-object v0
.end method
