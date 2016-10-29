.class public Lcom/twitter/library/scribe/TwitterScribeLog;
.super Lcom/twitter/library/scribe/ScribeLog;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/scribe/ScribeLog",
        "<",
        "Lcom/twitter/library/scribe/TwitterScribeLog;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeLog;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected f:Ljava/lang/String;

.field protected g:I

.field protected h:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Ljava/lang/String;

.field private o:J

.field private p:J

.field private q:Lcom/twitter/library/scribe/WebsiteAssetsLog;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/twitter/library/scribe/bn;

    invoke-direct {v0}, Lcom/twitter/library/scribe/bn;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/TwitterScribeLog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/scribe/ScribeLog;-><init>(J)V

    .line 93
    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->m:J

    .line 103
    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->o:J

    .line 108
    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->p:J

    .line 137
    return-void
.end method

.method public varargs constructor <init>(J[Ljava/lang/String;)V
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/library/scribe/ScribeLog;-><init>(J[Ljava/lang/String;)V

    .line 93
    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->m:J

    .line 103
    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->o:J

    .line 108
    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->p:J

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 115
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/ScribeLog;-><init>(Landroid/os/Parcel;)V

    .line 93
    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->m:J

    .line 103
    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->o:J

    .line 108
    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->p:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->j:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->k:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->f:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->g:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->h:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->l:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->m:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->n:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->o:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->p:J

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->r:Ljava/lang/String;

    .line 130
    :try_start_0
    const-class v0, Lcom/twitter/library/scribe/WebsiteAssetsLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/WebsiteAssetsLog;

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->q:Lcom/twitter/library/scribe/WebsiteAssetsLog;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 335
    if-eqz p0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tweet"

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 342
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const/4 v0, 0x3

    aput-object p2, v2, v0

    const/4 v0, 0x4

    aput-object p3, v2, v0

    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    const-string/jumbo v1, "tweet"

    .line 340
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/apache/thrift/TBase;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 599
    :try_start_0
    new-instance v0, Lorg/apache/thrift/e;

    invoke-direct {v0}, Lorg/apache/thrift/e;-><init>()V

    .line 600
    invoke-virtual {v0, p0}, Lorg/apache/thrift/e;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 601
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 604
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/internal/network/k;)V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p2, Lcom/twitter/internal/network/k;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p2, Lcom/twitter/internal/network/k;->c:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 381
    :cond_0
    iget v0, p2, Lcom/twitter/internal/network/k;->a:I

    invoke-virtual {p1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(I)Lcom/twitter/library/scribe/ScribeLog;

    .line 382
    invoke-virtual {p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/internal/network/k;)Lcom/twitter/library/scribe/ScribeLog;

    .line 383
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "connected"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 385
    invoke-virtual {p1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i()Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 386
    return-void

    .line 383
    :cond_1
    const-string/jumbo v0, "disconnected"

    goto :goto_0
.end method

.method public static a(Lbvk;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/model/av/AVMedia;)V
    .locals 2

    .prologue
    .line 444
    invoke-interface {p0}, Lbvk;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/twitter/library/scribe/TwitterScribeItem;->K:Ljava/lang/String;

    .line 445
    invoke-interface {p0, p2}, Lbvk;->a(Lcom/twitter/model/av/AVMedia;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/twitter/library/scribe/TwitterScribeItem;->L:Ljava/lang/String;

    .line 447
    invoke-interface {p0}, Lbvk;->b()J

    move-result-wide v0

    .line 448
    iput-wide v0, p1, Lcom/twitter/library/scribe/TwitterScribeItem;->aa:J

    .line 449
    iput-wide v0, p1, Lcom/twitter/library/scribe/TwitterScribeItem;->G:J

    .line 450
    return-void
.end method

.method public static b(Lcom/twitter/internal/network/k;)I
    .locals 2

    .prologue
    .line 352
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/twitter/internal/network/k;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 353
    :cond_0
    const/4 v0, -0x1

    .line 366
    :goto_0
    return v0

    .line 355
    :cond_1
    iget v0, p0, Lcom/twitter/internal/network/k;->a:I

    if-eqz v0, :cond_2

    .line 356
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/internal/network/k;->d:Z

    if-eqz v0, :cond_5

    .line 359
    iget-object v0, p0, Lcom/twitter/internal/network/k;->c:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/internal/network/k;->c:Ljava/lang/Exception;

    instance-of v0, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_4

    .line 361
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 363
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 366
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 274
    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_0

    .line 276
    :cond_0
    return-void
.end method

.method public static d(J)Lcom/twitter/library/scribe/bo;
    .locals 2

    .prologue
    .line 624
    new-instance v0, Lcom/twitter/library/scribe/bo;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/scribe/bo;-><init>(J)V

    return-object v0
.end method

.method public static j()V
    .locals 1

    .prologue
    .line 609
    const-string/jumbo v0, "thrift_logging_base64_whitelisted_domains"

    .line 610
    invoke-static {v0}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 609
    invoke-static {v0}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/scribe/TwitterScribeLog;->i:Ljava/util/Set;

    .line 611
    return-void
.end method

.method private static o(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/twitter/library/scribe/TwitterScribeLog;->i:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 618
    invoke-static {}, Lcom/twitter/library/scribe/TwitterScribeLog;->j()V

    .line 620
    :cond_0
    sget-object v0, Lcom/twitter/library/scribe/TwitterScribeLog;->i:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(JJ)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 579
    iput-wide p1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->o:J

    .line 580
    iput-wide p3, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->p:J

    .line 581
    return-object p0
.end method

.method public a(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 281
    return-object p0
.end method

.method public a(JLcss;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 287
    move-wide v0, p1

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;ILcom/twitter/model/timeline/al;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 288
    return-object p0
.end method

.method public a(JLcss;Ljava/lang/String;Lcom/twitter/model/timeline/al;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 7

    .prologue
    .line 310
    const/4 v4, 0x0

    move-wide v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/timeline/al;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 311
    return-object p0
.end method

.method public a(JLjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 325
    invoke-static {p1, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 326
    return-object p0
.end method

.method public a(Landroid/content/Context;Lclw;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 557
    invoke-static {p1, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lclw;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 558
    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 254
    if-eqz p2, :cond_1

    .line 255
    invoke-virtual {p2}, Lcom/twitter/library/card/CardContext;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p2}, Lcom/twitter/library/card/CardContext;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->l:Ljava/lang/String;

    .line 258
    :cond_0
    invoke-virtual {p2}, Lcom/twitter/library/card/CardContext;->f()Lcom/twitter/library/scribe/ScribeItemsProvider;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeItemsProvider;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 260
    :cond_1
    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/scribe/ScribeItemsProvider;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 266
    if-eqz p2, :cond_0

    .line 267
    invoke-interface {p2, p1, p3, p4}, Lcom/twitter/library/scribe/ScribeItemsProvider;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Ljava/util/List;)V

    .line 269
    :cond_0
    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 224
    if-eqz p2, :cond_0

    .line 225
    invoke-static {p1, p2, p3, p4}, Lcom/twitter/library/scribe/TwitterScribeItem;->b(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Ljava/util/List;)V

    .line 227
    :cond_0
    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/bj;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 244
    if-eqz p2, :cond_0

    .line 245
    invoke-static {p1, p3, p2, p4, p5}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Lcom/twitter/library/scribe/bj;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Ljava/util/List;)V

    .line 248
    :cond_0
    return-object p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lclm;J)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 2

    .prologue
    .line 317
    if-eqz p3, :cond_0

    .line 318
    invoke-static {p1, p2, p3, p4, p5}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Landroid/content/Context;Ljava/lang/String;Lclm;J)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 320
    :cond_0
    return-object p0
.end method

.method public a(Lcom/twitter/internal/network/HttpOperation;Z)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v0

    .line 457
    const-string/jumbo v1, "cdn::::request"

    invoke-virtual {p0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const-string/jumbo v1, "x-cache"

    invoke-virtual {p1, v1}, Lcom/twitter/internal/network/HttpOperation;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->a:Ljava/lang/String;

    .line 469
    :goto_0
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->i()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Lcom/twitter/internal/network/k;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    return-object v0

    .line 460
    :cond_0
    invoke-static {p1}, Lcom/twitter/library/network/at;->d(Lcom/twitter/internal/network/HttpOperation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    const-string/jumbo v1, "polling"

    iput-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->a:Ljava/lang/String;

    goto :goto_0

    .line 462
    :cond_1
    if-eqz p2, :cond_2

    .line 463
    const-string/jumbo v1, "non-polling-foreground"

    iput-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->a:Ljava/lang/String;

    goto :goto_0

    .line 465
    :cond_2
    const-string/jumbo v1, "non-polling-background"

    iput-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/scribe/WebsiteAssetsLog;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->q:Lcom/twitter/library/scribe/WebsiteAssetsLog;

    .line 587
    return-object p0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->f:Ljava/lang/String;

    .line 518
    iput p2, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->g:I

    .line 519
    iput-object p3, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->h:Ljava/lang/String;

    .line 521
    return-object p0
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->l:Ljava/lang/String;

    .line 572
    iput-wide p2, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->m:J

    .line 573
    iput-object p4, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->n:Ljava/lang/String;

    .line 574
    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 530
    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;Lcom/twitter/library/scribe/ScribeKeyValuesHolder;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;Lcom/twitter/library/scribe/ScribeKeyValuesHolder;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 4

    .prologue
    .line 537
    new-instance v1, Lcom/twitter/library/scribe/NativeCardEvent;

    invoke-direct {v1, p1}, Lcom/twitter/library/scribe/NativeCardEvent;-><init>(Ljava/lang/String;)V

    .line 538
    if-eqz p2, :cond_0

    .line 539
    invoke-virtual {v1, p2}, Lcom/twitter/library/scribe/NativeCardEvent;->a(Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 541
    :cond_0
    if-eqz p3, :cond_1

    .line 542
    invoke-virtual {v1, p3}, Lcom/twitter/library/scribe/NativeCardEvent;->a(Lcom/twitter/library/scribe/ScribeKeyValuesHolder;)V

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/scribe/TwitterScribeLog;->c()Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 545
    if-eqz v0, :cond_3

    .line 546
    iget v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 547
    iget v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->m:I

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/NativeCardEvent;->a(I)V

    .line 549
    :cond_2
    iput-object v1, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->at:Lcom/twitter/library/scribe/NativeCardEvent;

    .line 551
    :cond_3
    return-object p0
.end method

.method protected a(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 173
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "settings_version_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->e(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v0, "feature_switches"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v0, "experiments"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 180
    const-string/jumbo v0, "experiment_key"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v0, "version"

    iget v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 182
    const-string/jumbo v0, "bucket"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 185
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_2
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->m:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 188
    const-string/jumbo v0, "status_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->m:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->n:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 191
    const-string/jumbo v0, "impression_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_4
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->o:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 194
    const-string/jumbo v0, "dm_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->o:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 196
    :cond_5
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->p:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 197
    const-string/jumbo v0, "dm_create_time"

    iget-wide v2, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->p:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 199
    :cond_6
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->q:Lcom/twitter/library/scribe/WebsiteAssetsLog;

    if-eqz v0, :cond_7

    .line 200
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->q:Lcom/twitter/library/scribe/WebsiteAssetsLog;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/WebsiteAssetsLog;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 202
    :cond_7
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->f:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "experiment_details"

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    new-instance v0, Lcom/twitter/clientapp/thriftandroid/b;

    invoke-direct {v0}, Lcom/twitter/clientapp/thriftandroid/b;-><init>()V

    sget-object v1, Lcom/twitter/clientapp/thriftandroid/ExperimentDetails;->b:Lcom/twitter/clientapp/thriftandroid/ExperimentDetails$_Fields;

    iget-object v2, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->f:Ljava/lang/String;

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/twitter/clientapp/thriftandroid/b;->a(Lcom/twitter/clientapp/thriftandroid/ExperimentDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/b;

    move-result-object v0

    sget-object v1, Lcom/twitter/clientapp/thriftandroid/ExperimentDetails;->d:Lcom/twitter/clientapp/thriftandroid/ExperimentDetails$_Fields;

    iget v2, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->g:I

    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/clientapp/thriftandroid/b;->a(Lcom/twitter/clientapp/thriftandroid/ExperimentDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/b;

    move-result-object v0

    sget-object v1, Lcom/twitter/clientapp/thriftandroid/ExperimentDetails;->c:Lcom/twitter/clientapp/thriftandroid/ExperimentDetails$_Fields;

    iget-object v2, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->h:Ljava/lang/String;

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/twitter/clientapp/thriftandroid/b;->a(Lcom/twitter/clientapp/thriftandroid/ExperimentDetails$_Fields;Ljava/lang/Object;)Lcom/twitter/clientapp/thriftandroid/b;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/twitter/clientapp/thriftandroid/b;->a()Lcom/twitter/clientapp/thriftandroid/ExperimentDetails;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "experiment_details_binary"

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lorg/apache/thrift/TBase;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_8
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->r:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 212
    const-string/jumbo v0, "custom_json_payload"

    iget-object v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_9
    return-void
.end method

.method public b(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 304
    return-object p0
.end method

.method public b(JLcss;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(JLcss;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 295
    iput p5, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->au:I

    .line 296
    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 297
    return-object p0
.end method

.method public b(Landroid/content/Context;Lclw;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 564
    invoke-static {p1, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeItem;->b(Landroid/content/Context;Lclw;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 565
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->j:Ljava/lang/String;

    .line 511
    iput-object p2, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->k:Ljava/lang/String;

    .line 512
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public f(I)Lcom/twitter/library/scribe/ScribeLog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/scribe/ScribeLog;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeItem;

    .line 500
    instance-of v2, v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    if-eqz v2, :cond_0

    .line 501
    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(I)V

    goto :goto_0

    .line 504
    :cond_1
    return-object p0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lchw;->a()Lchw;

    move-result-object v0

    invoke-virtual {v0}, Lchw;->b()I

    move-result v0

    return v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 474
    invoke-virtual {p0}, Lcom/twitter/library/scribe/TwitterScribeLog;->h()Ljava/lang/String;

    move-result-object v4

    .line 476
    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 488
    iput v1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->b:I

    .line 493
    :goto_1
    return-object p0

    .line 476
    :sswitch_0
    const-string/jumbo v5, "2g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "cellular"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    .line 479
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/library/scribe/TwitterScribeLog;->g()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->d:I

    .line 480
    iput v3, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->b:I

    goto :goto_1

    .line 484
    :pswitch_1
    iput v2, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->b:I

    goto :goto_1

    .line 476
    :sswitch_data_0
    .sparse-switch
        -0x36a22696 -> :sswitch_1
        0x675 -> :sswitch_0
        0x37af15 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public n(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->r:Ljava/lang/String;

    .line 593
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/twitter/library/scribe/ScribeLog;->writeToParcel(Landroid/os/Parcel;I)V

    .line 157
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-wide v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/twitter/library/scribe/TwitterScribeLog;->q:Lcom/twitter/library/scribe/WebsiteAssetsLog;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    return-void
.end method
