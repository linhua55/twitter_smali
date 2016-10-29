.class public Lclw;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lclw;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcls;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lclm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lclz;

    invoke-direct {v0}, Lclz;-><init>()V

    sput-object v0, Lclw;->a:Lcom/twitter/util/serialization/ah;

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "photo_image"

    aput-object v1, v0, v3

    const-string/jumbo v1, "player_image"

    aput-object v1, v0, v4

    const-string/jumbo v1, "summary_photo_image"

    aput-object v1, v0, v5

    const-string/jumbo v1, "promo_image"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "thumbnail_image"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "item_image"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "offer_image"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "main_image"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "image"

    aput-object v2, v0, v1

    sput-object v0, Lclw;->b:[Ljava/lang/String;

    .line 74
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "promo_app"

    aput-object v1, v0, v3

    const-string/jumbo v1, "promo_image_app"

    aput-object v1, v0, v4

    sput-object v0, Lclw;->c:[Ljava/lang/String;

    .line 79
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "promo_image_convo"

    aput-object v1, v0, v3

    const-string/jumbo v1, "promo_video_convo"

    aput-object v1, v0, v4

    sput-object v0, Lclw;->d:[Ljava/lang/String;

    .line 86
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "poll2choice_text_only"

    aput-object v1, v0, v3

    const-string/jumbo v1, "poll3choice_text_only"

    aput-object v1, v0, v4

    const-string/jumbo v1, "poll4choice_text_only"

    aput-object v1, v0, v5

    sput-object v0, Lclw;->e:[Ljava/lang/String;

    .line 92
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "poll2choice_image"

    aput-object v1, v0, v3

    const-string/jumbo v1, "poll3choice_image"

    aput-object v1, v0, v4

    const-string/jumbo v1, "poll4choice_image"

    aput-object v1, v0, v5

    sput-object v0, Lclw;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcls;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lclw;->g:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lclw;->h:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lclw;->i:Ljava/util/Map;

    .line 120
    iput-object p4, p0, Lclw;->j:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lclw;->k:Ljava/lang/String;

    .line 122
    iput-object p6, p0, Lclw;->l:Ljava/util/Map;

    .line 123
    invoke-static {p6}, Lclm;->a(Ljava/util/Map;)Lclm;

    move-result-object v0

    iput-object v0, p0, Lclw;->m:Lclm;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lclx;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p6}, Lclw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lclw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lclw;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcma;

    if-eqz v0, :cond_0

    .line 354
    check-cast p0, Lcma;

    .line 355
    iget-object v0, p0, Lcma;->a:Ljava/lang/String;

    .line 357
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lclw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lclw;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lclw;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lclw;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lclw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lclw;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lclw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lclw;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lclw;->g:Ljava/lang/String;

    const-string/jumbo v1, "live_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 2

    .prologue
    .line 365
    const-string/jumbo v0, "2586390716:product_ad"

    iget-object v1, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 2

    .prologue
    .line 369
    const-string/jumbo v0, "3691233323:periscope_broadcast"

    iget-object v1, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lclw;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lclw;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lclw;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 377
    sget-object v2, Lclw;->c:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 378
    iget-object v5, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    const/4 v0, 0x1

    .line 382
    :cond_0
    return v0

    .line 377
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public F()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 386
    sget-object v2, Lclw;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 387
    iget-object v5, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    const/4 v0, 0x1

    .line 391
    :cond_0
    return v0

    .line 386
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public G()Z
    .locals 2

    .prologue
    .line 395
    const-string/jumbo v0, "appplayer"

    iget-object v1, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 399
    sget-object v2, Lclw;->e:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 400
    iget-object v5, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
    const/4 v0, 0x1

    .line 404
    :cond_0
    return v0

    .line 399
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public I()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 408
    sget-object v2, Lclw;->f:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 409
    iget-object v5, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    const/4 v0, 0x1

    .line 413
    :cond_0
    return v0

    .line 408
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public J()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 417
    iget-object v2, p0, Lclw;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    :goto_0
    return v0

    .line 421
    :cond_0
    iget-object v3, p0, Lclw;->g:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 425
    goto :goto_0

    .line 421
    :sswitch_0
    const-string/jumbo v4, "2586390716:buy_now"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "2586390716:buy_now:staging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "13598072:buy_now:staging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7337054a -> :sswitch_0
        -0x663fd889 -> :sswitch_1
        0x1fe396fd -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public K()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 434
    iget-object v2, p0, Lclw;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    :goto_0
    return v0

    .line 438
    :cond_0
    iget-object v3, p0, Lclw;->g:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 443
    goto :goto_0

    .line 438
    :sswitch_0
    const-string/jumbo v4, "2586390716:buy_now_offers"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "2586390716:buy_now_offers:staging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "2586390716.forward:forward_buy_now_offers"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "2586390716.forward:forward_buy_now_offers:staging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d54c4bd -> :sswitch_2
        -0x4b3e21ff -> :sswitch_1
        0x26c6db40 -> :sswitch_0
        0x73138b04 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public L()Z
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lclw;->l:Ljava/util/Map;

    const-string/jumbo v1, "suppress_tweet_text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcls;

    .line 453
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcls;->c:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 454
    iget-object v0, v0, Lcls;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lclw;->L()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lclw;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N()Lclm;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lclw;->m:Lclm;

    return-object v0
.end method

.method public a(F)I
    .locals 3

    .prologue
    .line 162
    const/16 v1, 0xa0

    .line 163
    iget-object v0, p0, Lclw;->l:Ljava/util/Map;

    const-string/jumbo v2, "_forward_card_height_"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcls;

    .line 164
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcls;->c:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 165
    iget-object v0, v0, Lcls;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 168
    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lclw;->b(Ljava/lang/String;)Lcls;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    iget-object v0, v0, Lcls;->c:Ljava/lang/Object;

    .line 216
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lclw;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "amplify"

    iget-object v1, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lcls;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lclw;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcls;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lclw;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lclw;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lclw;->i:Ljava/util/Map;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lclw;->j:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 479
    if-ne p0, p1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    instance-of v2, p1, Lclw;

    if-nez v2, :cond_2

    move v0, v1

    .line 482
    goto :goto_0

    .line 484
    :cond_2
    check-cast p1, Lclw;

    .line 485
    iget-object v2, p0, Lclw;->g:Ljava/lang/String;

    iget-object v3, p1, Lclw;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lclw;->h:Ljava/lang/String;

    iget-object v3, p1, Lclw;->h:Ljava/lang/String;

    .line 486
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lclw;->j:Ljava/lang/String;

    iget-object v3, p1, Lclw;->j:Ljava/lang/String;

    .line 487
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lclw;->k:Ljava/lang/String;

    iget-object v3, p1, Lclw;->k:Ljava/lang/String;

    .line 488
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lclw;->l:Ljava/util/Map;

    iget-object v3, p1, Lclw;->l:Ljava/util/Map;

    .line 489
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lclw;->i:Ljava/util/Map;

    iget-object v3, p1, Lclw;->i:Ljava/util/Map;

    .line 490
    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lclw;->k:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lclw;->l:Ljava/util/Map;

    const-string/jumbo v1, "_omit_link_"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcls;

    .line 173
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcls;->c:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 174
    iget-object v0, v0, Lcls;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()Lcom/twitter/model/core/TwitterUser;
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "site"

    const-class v1, Lcma;

    invoke-virtual {p0, v0, v1}, Lclw;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 182
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lclw;->i:Ljava/util/Map;

    iget-object v0, v0, Lcma;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 495
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lclw;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lclw;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lclw;->l:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lclw;->i:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lclw;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lclw;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lclw;->h()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcls;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lclw;->l:Ljava/util/Map;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string/jumbo v0, "video_source"

    invoke-virtual {p0, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    .line 239
    const-string/jumbo v0, "amplify_url_vmap"

    invoke-virtual {p0, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    if-nez v0, :cond_1

    .line 242
    const-string/jumbo v0, "amplify_url"

    invoke-virtual {p0, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_1
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string/jumbo v0, "player_url"

    invoke-virtual {p0, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const-string/jumbo v0, "player_stream_url"

    invoke-virtual {p0, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const-string/jumbo v0, "player_stream_url"

    invoke-virtual {p0, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string/jumbo v0, "player_stream_url"

    invoke-virtual {p0, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string/jumbo v0, "video_content_id"

    invoke-virtual {p0, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    if-nez v0, :cond_0

    .line 277
    const-string/jumbo v0, "amplify_content_id"

    invoke-virtual {p0, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_0
    return-object v0
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 293
    const-string/jumbo v0, "dynamic_ads"

    invoke-virtual {p0, v0}, Lclw;->b(Ljava/lang/String;)Lcls;

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lclw;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcls;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcls;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 295
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lcom/twitter/model/card/property/ImageSpec;
    .locals 5

    .prologue
    .line 300
    sget-object v2, Lclw;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 301
    const-class v4, Lcom/twitter/model/card/property/ImageSpec;

    invoke-virtual {p0, v0, v4}, Lclw;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/card/property/ImageSpec;

    .line 302
    if-eqz v0, :cond_0

    .line 306
    :goto_1
    return-object v0

    .line 300
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 315
    const-string/jumbo v0, "player"

    iget-object v1, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lclw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lclw;->g:Ljava/lang/String;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 4

    .prologue
    .line 323
    invoke-virtual {p0}, Lclw;->h()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 324
    const-string/jumbo v1, "4889131224:vine"

    iget-object v2, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    const-wide/32 v2, 0x22f7e725

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lclw;->g:Ljava/lang/String;

    const-string/jumbo v1, "moment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 332
    const-string/jumbo v0, "summary"

    iget-object v1, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 336
    const-string/jumbo v0, "summary_large_image"

    iget-object v1, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 2

    .prologue
    .line 340
    const-string/jumbo v0, "promotion"

    iget-object v1, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 344
    const-string/jumbo v0, "2586390716:message_me"

    iget-object v1, p0, Lclw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
