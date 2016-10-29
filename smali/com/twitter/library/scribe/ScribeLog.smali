.class public abstract Lcom/twitter/library/scribe/ScribeLog;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lbjh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TScribe",
        "Log:Lcom/twitter/library/scribe/ScribeLog",
        "<TTScribe",
        "Log;",
        ">;>",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lbjh;"
    }
.end annotation


# static fields
.field private static final f:Lcom/fasterxml/jackson/core/JsonFactory;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:I

.field private E:[B

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Ljava/lang/String;

.field private O:J

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:I

.field private T:I

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/ScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/ScribeAssociation;",
            ">;"
        }
    .end annotation
.end field

.field private W:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private X:Z

.field private Y:I

.field private Z:Ljava/lang/String;

.field protected a:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/ScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/ScribeSection;",
            ">;"
        }
    .end annotation
.end field

.field private final h:J

.field private i:J

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private final p:J

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/ScribeLog;->f:Lcom/fasterxml/jackson/core/JsonFactory;

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput v2, p0, Lcom/twitter/library/scribe/ScribeLog;->b:I

    .line 186
    const v0, 0x7fffffff

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->d:I

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->e:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->g:Ljava/util/List;

    .line 203
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->i:J

    .line 208
    iput v2, p0, Lcom/twitter/library/scribe/ScribeLog;->j:I

    .line 213
    iput v2, p0, Lcom/twitter/library/scribe/ScribeLog;->k:I

    .line 280
    iput v2, p0, Lcom/twitter/library/scribe/ScribeLog;->x:I

    .line 394
    iput v2, p0, Lcom/twitter/library/scribe/ScribeLog;->S:I

    .line 399
    iput v2, p0, Lcom/twitter/library/scribe/ScribeLog;->T:I

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog;->X:Z

    .line 424
    iput v2, p0, Lcom/twitter/library/scribe/ScribeLog;->Y:I

    .line 440
    iput-wide p1, p0, Lcom/twitter/library/scribe/ScribeLog;->p:J

    .line 441
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->h:J

    .line 442
    iput v2, p0, Lcom/twitter/library/scribe/ScribeLog;->q:I

    .line 443
    const-string/jumbo v0, "client_event"

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    .line 444
    return-void
.end method

.method protected varargs constructor <init>(J[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/scribe/ScribeLog;-><init>(J)V

    .line 448
    invoke-static {p3}, Lcom/twitter/library/scribe/ScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->P:Ljava/lang/String;

    .line 449
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput v3, p0, Lcom/twitter/library/scribe/ScribeLog;->b:I

    .line 186
    const v0, 0x7fffffff

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->d:I

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->e:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->g:Ljava/util/List;

    .line 203
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/twitter/library/scribe/ScribeLog;->i:J

    .line 208
    iput v3, p0, Lcom/twitter/library/scribe/ScribeLog;->j:I

    .line 213
    iput v3, p0, Lcom/twitter/library/scribe/ScribeLog;->k:I

    .line 280
    iput v3, p0, Lcom/twitter/library/scribe/ScribeLog;->x:I

    .line 394
    iput v3, p0, Lcom/twitter/library/scribe/ScribeLog;->S:I

    .line 399
    iput v3, p0, Lcom/twitter/library/scribe/ScribeLog;->T:I

    .line 422
    iput-boolean v2, p0, Lcom/twitter/library/scribe/ScribeLog;->X:Z

    .line 424
    iput v3, p0, Lcom/twitter/library/scribe/ScribeLog;->Y:I

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/library/scribe/ScribeLog;->p:J

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->P:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Q:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/library/scribe/ScribeLog;->h:J

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->o:Ljava/lang/String;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->c:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->R:Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->l:Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->m:I

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->n:I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/library/scribe/ScribeLog;->i:J

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->j:I

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->k:I

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->q:I

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->r:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->s:Ljava/lang/String;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->a:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->u:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->v:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->x:I

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->z:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->A:Ljava/lang/String;

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->C:Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->D:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    if-eq v0, v3, :cond_0

    .line 479
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->E:[B

    .line 480
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->E:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 482
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->F:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->b:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->d:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->G:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->H:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->I:Ljava/lang/String;

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->J:Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->K:Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->L:Ljava/lang/String;

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog;->M:Z

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->N:Ljava/lang/String;

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/library/scribe/ScribeLog;->O:J

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->t:Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->g:Ljava/util/List;

    const-class v3, Lcom/twitter/library/scribe/ScribeSection;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 496
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->e:Ljava/util/List;

    const-class v3, Lcom/twitter/library/scribe/ScribeItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->V:Ljava/util/List;

    .line 498
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->V:Ljava/util/List;

    const-class v3, Lcom/twitter/library/scribe/ScribeAssociation;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 500
    if-lez v3, :cond_2

    move v0, v2

    .line 501
    :goto_1
    if-ge v0, v3, :cond_2

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/twitter/library/scribe/ScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 491
    goto :goto_0

    .line 505
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Y:I

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ae:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Z:Ljava/lang/String;

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->aa:Ljava/lang/String;

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ab:Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ac:Ljava/lang/String;

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ad:Ljava/lang/String;

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->S:I

    .line 513
    const-class v0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->w:Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->T:I

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->U:Ljava/util/List;

    .line 516
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->U:Ljava/util/List;

    const-class v3, Lcom/twitter/library/scribe/ScribeItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->af:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/twitter/library/scribe/ScribeLog;->B:Z

    .line 519
    return-void

    :cond_3
    move v1, v2

    .line 518
    goto :goto_2
.end method

.method public static varargs a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 532
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 533
    :cond_0
    const-string/jumbo v0, ""

    .line 549
    :goto_0
    return-object v0

    .line 534
    :cond_1
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 535
    aget-object v0, p1, v0

    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 538
    array-length v1, p1

    .line 539
    :goto_1
    if-ge v0, v1, :cond_5

    .line 540
    aget-object v2, p1, v0

    if-nez v2, :cond_4

    .line 541
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_3

    .line 546
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 543
    :cond_4
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 549
    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 522
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 523
    :cond_0
    const-string/jumbo v0, ""

    .line 527
    :goto_0
    return-object v0

    .line 524
    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 525
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 527
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/twitter/library/scribe/ScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 651
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 652
    const-string/jumbo v0, "_category_"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string/jumbo v0, "format_version"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 654
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 655
    const-string/jumbo v0, "client_version"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    const-string/jumbo v0, "client_event"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "app_download_client_event"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "asset_prefetching_event"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "live_video_heartbeat_event"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Q:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 661
    const-string/jumbo v0, "referring_event"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/library/scribe/ScribeLog;->Q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->P:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 664
    const-string/jumbo v0, "event_name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/library/scribe/ScribeLog;->P:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->R:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 667
    const-string/jumbo v0, "limit_ad_tracking"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->R:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 669
    :cond_4
    const-string/jumbo v0, "ts"

    iget-wide v4, p0, Lcom/twitter/library/scribe/ScribeLog;->h:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 670
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 671
    const-string/jumbo v0, "server"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->l:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 674
    const-string/jumbo v0, "protocol"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_6
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->m:I

    if-ltz v0, :cond_7

    .line 677
    const-string/jumbo v0, "stream_id"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 679
    :cond_7
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->n:I

    if-ltz v0, :cond_8

    .line 680
    const-string/jumbo v0, "content_length"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 682
    :cond_8
    iget-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->i:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 683
    const-string/jumbo v0, "duration_ms"

    iget-wide v4, p0, Lcom/twitter/library/scribe/ScribeLog;->i:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 685
    :cond_9
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->j:I

    if-eq v0, v6, :cond_a

    .line 686
    const-string/jumbo v0, "status_code"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 688
    :cond_a
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->k:I

    if-eq v0, v6, :cond_b

    .line 689
    const-string/jumbo v0, "failure_type"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->k:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 691
    :cond_b
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->s:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 692
    const-string/jumbo v0, "message"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_c
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->a:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 695
    const-string/jumbo v0, "event_info"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_d
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->u:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 698
    const-string/jumbo v0, "impression_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_e
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->t:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 701
    const-string/jumbo v0, "event_value"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_f
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->o:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 704
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_10
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->q:I

    if-eq v0, v6, :cond_11

    .line 707
    const-string/jumbo v0, "event_initiator"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 709
    :cond_11
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->v:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 710
    const-string/jumbo v0, "query"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->v:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_12
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->x:I

    if-eq v0, v6, :cond_13

    .line 713
    const-string/jumbo v0, "position"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->x:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 715
    :cond_13
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->z:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 716
    const-string/jumbo v0, "context"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_14
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->A:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 719
    const-string/jumbo v0, "profile_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_15
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->F:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 722
    const-string/jumbo v0, "orientation"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_16
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->b:I

    if-eq v0, v6, :cond_17

    .line 725
    const-string/jumbo v0, "network_status"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 727
    :cond_17
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_18

    .line 728
    const-string/jumbo v0, "signal_strength"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 730
    :cond_18
    const/4 v0, 0x0

    .line 731
    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->G:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 732
    const-string/jumbo v0, "mobile_network_operator_iso_country_code"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->G:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 735
    :cond_19
    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->H:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 736
    const-string/jumbo v0, "mobile_network_operator_code"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 739
    :cond_1a
    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->I:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 740
    const-string/jumbo v0, "mobile_network_operator_name"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->I:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 743
    :cond_1b
    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->J:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 744
    const-string/jumbo v0, "mobile_sim_provider_iso_country_code"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 747
    :cond_1c
    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->K:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 748
    const-string/jumbo v0, "mobile_sim_provider_code"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->K:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 751
    :cond_1d
    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->L:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 752
    const-string/jumbo v0, "mobile_sim_provider_name"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->L:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 755
    :cond_1e
    if-eqz v0, :cond_1f

    .line 756
    const-string/jumbo v0, "is_roaming"

    iget-boolean v1, p0, Lcom/twitter/library/scribe/ScribeLog;->M:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 758
    :cond_1f
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/ScribeLog;->c(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 759
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->w:Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

    if-eqz v0, :cond_20

    .line 760
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->w:Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 762
    :cond_20
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 763
    const-string/jumbo v0, "items"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->d(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeItem;

    .line 765
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/ScribeItem;->b(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 767
    :cond_21
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 769
    :cond_22
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->V:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 770
    const-string/jumbo v0, "associations"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->e(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeAssociation;

    .line 772
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/ScribeAssociation;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 774
    :cond_23
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 776
    :cond_24
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->W:Ljava/util/Map;

    if-eqz v0, :cond_26

    .line 777
    const-string/jumbo v0, "external_ids"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->e(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->W:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 779
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 781
    :cond_25
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 783
    :cond_26
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Y:I

    if-eq v0, v6, :cond_27

    .line 784
    const-string/jumbo v0, "referral_type"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->Y:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 786
    :cond_27
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Z:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 787
    const-string/jumbo v0, "medium"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->Z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_28
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->aa:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 790
    const-string/jumbo v0, "campaign"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->aa:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_29
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ab:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 793
    const-string/jumbo v0, "query_term"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->ab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_2a
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ac:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 796
    const-string/jumbo v0, "campaign_content"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->ac:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_2b
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ad:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 799
    const-string/jumbo v0, "gclid"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->ad:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :cond_2c
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ae:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 802
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->ae:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string/jumbo v0, "external_referer"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->ae:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_2d
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->S:I

    if-eq v0, v6, :cond_2e

    .line 808
    const-string/jumbo v0, "cursor_or_page"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->S:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 810
    :cond_2e
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->T:I

    if-eq v0, v6, :cond_2f

    .line 811
    const-string/jumbo v0, "item_count"

    iget v1, p0, Lcom/twitter/library/scribe/ScribeLog;->T:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 813
    :cond_2f
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->U:Ljava/util/List;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 814
    const-string/jumbo v0, "targets"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->d(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeItem;

    .line 816
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/ScribeItem;->b(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_3

    .line 818
    :cond_30
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 820
    :cond_31
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->af:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 821
    const-string/jumbo v0, "website_dest_url"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->af:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_32
    iget-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog;->B:Z

    if-eqz v0, :cond_33

    .line 824
    const-string/jumbo v0, "business_profile"

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 846
    :cond_33
    :goto_4
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeSection;

    .line 847
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/ScribeSection;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_5

    .line 826
    :cond_34
    const-string/jumbo v0, "client_watch_error"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->D:I

    if-lez v0, :cond_33

    .line 827
    const-string/jumbo v0, "product_name"

    const-string/jumbo v1, "android"

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->D:I

    packed-switch v0, :pswitch_data_0

    .line 841
    :goto_6
    const-string/jumbo v0, "error"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->E:[B

    if-eqz v0, :cond_33

    .line 843
    const-string/jumbo v0, "error_details"

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/library/scribe/ScribeLog;->E:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 830
    :pswitch_0
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "crash"

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 834
    :pswitch_1
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "error"

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 849
    :cond_35
    invoke-virtual {p0, p1}, Lcom/twitter/library/scribe/ScribeLog;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 850
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 851
    return-void

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 854
    iget-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->O:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->N:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 865
    :goto_0
    return-void

    .line 857
    :cond_0
    const-string/jumbo v0, "sms_delivery_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->e(Ljava/lang/String;)V

    .line 858
    iget-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->O:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 859
    const-string/jumbo v0, "time_since"

    iget-wide v2, p0, Lcom/twitter/library/scribe/ScribeLog;->O:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->N:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 862
    const-string/jumbo v0, "phone_number"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->N:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1307
    const-string/jumbo v0, "android"

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 900
    iput p1, p0, Lcom/twitter/library/scribe/ScribeLog;->j:I

    .line 901
    return-object p0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1214
    iput p1, p0, Lcom/twitter/library/scribe/ScribeLog;->Y:I

    .line 1215
    iput-object p2, p0, Lcom/twitter/library/scribe/ScribeLog;->ae:Ljava/lang/String;

    .line 1216
    iput-object p3, p0, Lcom/twitter/library/scribe/ScribeLog;->Z:Ljava/lang/String;

    .line 1217
    iput-object p4, p0, Lcom/twitter/library/scribe/ScribeLog;->aa:Ljava/lang/String;

    .line 1218
    iput-object p5, p0, Lcom/twitter/library/scribe/ScribeLog;->ab:Ljava/lang/String;

    .line 1219
    iput-object p6, p0, Lcom/twitter/library/scribe/ScribeLog;->ac:Ljava/lang/String;

    .line 1220
    iput-object p7, p0, Lcom/twitter/library/scribe/ScribeLog;->ad:Ljava/lang/String;

    .line 1221
    iput-object p8, p0, Lcom/twitter/library/scribe/ScribeLog;->s:Ljava/lang/String;

    .line 1222
    return-object p0
.end method

.method public a(J)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 963
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->t:Ljava/lang/String;

    .line 964
    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 935
    invoke-static {p1}, Lcom/twitter/library/network/at;->a(Landroid/content/Context;)Lcom/twitter/library/network/at;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/library/network/at;->e:Lcom/twitter/library/network/ax;

    invoke-virtual {v0}, Lcom/twitter/library/network/ax;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->r:Ljava/lang/String;

    .line 936
    return-object p0
.end method

.method public a(Landroid/content/Context;Z)Lcom/twitter/library/scribe/ScribeLog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1285
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1286
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->G:Ljava/lang/String;

    .line 1287
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->H:Ljava/lang/String;

    .line 1288
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->I:Ljava/lang/String;

    .line 1289
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->J:Ljava/lang/String;

    .line 1290
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->K:Ljava/lang/String;

    .line 1291
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/scribe/ScribeLog;->L:Ljava/lang/String;

    .line 1292
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/library/scribe/ScribeLog;->M:Z

    .line 1293
    if-eqz p2, :cond_0

    .line 1294
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->N:Ljava/lang/String;

    .line 1296
    :cond_0
    return-object p0
.end method

.method public a(Lcom/twitter/internal/network/k;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/k;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/twitter/internal/network/k;->o:Lcom/twitter/internal/network/HttpOperation$Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/internal/network/k;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->l:Ljava/lang/String;

    .line 1026
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/scribe/ScribeAssociation;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1136
    if-eqz p1, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->V:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->V:Ljava/util/List;

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->V:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    :cond_1
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/scribe/ScribeItem;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1103
    if-eqz p1, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    :cond_0
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/ScribeLog$SearchDetails;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/scribe/ScribeLog$SearchDetails;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 990
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->w:Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

    .line 991
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/ScribeSection;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/scribe/ScribeSection;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1228
    const-string/jumbo v0, "extended_media_details"

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    .line 1229
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 893
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->Q:Ljava/lang/String;

    .line 894
    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/twitter/internal/network/k;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/twitter/internal/network/k;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->o:Ljava/lang/String;

    .line 1197
    iget-object v0, p2, Lcom/twitter/internal/network/k;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->c:Ljava/lang/String;

    .line 1198
    iget v0, p2, Lcom/twitter/internal/network/k;->a:I

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->j:I

    .line 1199
    iget-wide v0, p2, Lcom/twitter/internal/network/k;->e:J

    iput-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->i:J

    .line 1200
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->q:I

    .line 1201
    invoke-virtual {p0, p2}, Lcom/twitter/library/scribe/ScribeLog;->a(Lcom/twitter/internal/network/k;)Lcom/twitter/library/scribe/ScribeLog;

    .line 1202
    iget v0, p2, Lcom/twitter/internal/network/k;->n:I

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->m:I

    .line 1203
    iget v0, p2, Lcom/twitter/internal/network/k;->k:I

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->n:I

    .line 1204
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Q:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p2, Lcom/twitter/internal/network/k;->j:I

    if-eqz v0, :cond_0

    .line 1205
    iget v0, p2, Lcom/twitter/internal/network/k;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Q:Ljava/lang/String;

    .line 1207
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->W:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->W:Ljava/util/Map;

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->W:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/twitter/library/scribe/ScribeLog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 983
    new-instance v0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->w:Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

    .line 984
    return-object p0
.end method

.method public a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1164
    const-string/jumbo v0, "client_watch_error"

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    .line 1165
    iput p2, p0, Lcom/twitter/library/scribe/ScribeLog;->D:I

    .line 1166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->C:Ljava/lang/String;

    .line 1167
    invoke-static {p1}, Lcjw;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->E:[B

    .line 1168
    iput-object p3, p0, Lcom/twitter/library/scribe/ScribeLog;->a:Ljava/lang/String;

    .line 1169
    iput-object p4, p0, Lcom/twitter/library/scribe/ScribeLog;->r:Ljava/lang/String;

    .line 1170
    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/twitter/library/scribe/ScribeItem;",
            ">;)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1088
    if-eqz p1, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1091
    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/twitter/library/scribe/ScribeItem;",
            ">;)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1184
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/library/scribe/ScribeLog;->q:I

    .line 1185
    if-eqz p1, :cond_0

    .line 1186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeItem;

    .line 1187
    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/ScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_0

    .line 1190
    :cond_0
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1046
    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->R:Ljava/lang/String;

    .line 1047
    return-object p0

    .line 1046
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->P:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 629
    .line 632
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :try_start_1
    sget-object v2, Lcom/twitter/library/scribe/ScribeLog;->f:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->a(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 634
    :try_start_2
    invoke-direct {p0, v1}, Lcom/twitter/library/scribe/ScribeLog;->b(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 635
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 638
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 639
    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 641
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 638
    :goto_1
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 639
    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v2}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 639
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    throw v0

    .line 638
    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 636
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public b()J
    .locals 2

    .prologue
    .line 880
    iget-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->p:J

    return-wide v0
.end method

.method public b(I)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 907
    iput p1, p0, Lcom/twitter/library/scribe/ScribeLog;->k:I

    .line 908
    return-object p0
.end method

.method public b(J)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1067
    iput-wide p1, p0, Lcom/twitter/library/scribe/ScribeLog;->i:J

    .line 1068
    return-object p0
.end method

.method public b(Landroid/content/Context;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/library/scribe/ScribeLog;->a(Landroid/content/Context;Z)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/scribe/ScribeItem;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1124
    if-eqz p1, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->U:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->U:Ljava/util/List;

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->U:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    :cond_1
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 914
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->o:Ljava/lang/String;

    .line 915
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->o:Ljava/lang/String;

    .line 1177
    iput-object p2, p0, Lcom/twitter/library/scribe/ScribeLog;->s:Ljava/lang/String;

    .line 1178
    return-object p0
.end method

.method public b(Z)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1081
    iput-boolean p1, p0, Lcom/twitter/library/scribe/ScribeLog;->B:Z

    .line 1082
    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 886
    invoke-static {p1}, Lcom/twitter/library/scribe/ScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->P:Ljava/lang/String;

    .line 887
    return-object p0
.end method

.method public c()Lcom/twitter/library/scribe/ScribeItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/twitter/library/scribe/ScribeItem;",
            ">()TI;"
        }
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeItem;

    return-object v0
.end method

.method public c(I)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 921
    iput p1, p0, Lcom/twitter/library/scribe/ScribeLog;->q:I

    .line 922
    return-object p0
.end method

.method public c(J)Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1302
    iput-wide p1, p0, Lcom/twitter/library/scribe/ScribeLog;->O:J

    .line 1303
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 928
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->r:Ljava/lang/String;

    .line 929
    return-object p0
.end method

.method public d(I)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 997
    iput p1, p0, Lcom/twitter/library/scribe/ScribeLog;->x:I

    .line 998
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 942
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->s:Ljava/lang/String;

    .line 943
    return-object p0
.end method

.method public e()Lcom/twitter/library/scribe/ScribeLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog;->X:Z

    .line 1314
    return-object p0
.end method

.method public e(I)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1060
    iput p1, p0, Lcom/twitter/library/scribe/ScribeLog;->T:I

    .line 1061
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 949
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->u:Ljava/lang/String;

    .line 950
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 956
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->a:Ljava/lang/String;

    .line 957
    return-object p0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 1318
    iget-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog;->X:Z

    return v0
.end method

.method public g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 975
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->v:Ljava/lang/String;

    .line 976
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    .line 1005
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->z:Ljava/lang/String;

    .line 1012
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->A:Ljava/lang/String;

    .line 1019
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->C:Ljava/lang/String;

    .line 1033
    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->F:Ljava/lang/String;

    .line 1040
    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTScribe",
            "Log;"
        }
    .end annotation

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog;->af:Ljava/lang/String;

    .line 1075
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 646
    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/ScribeLog;->a(Ljava/io/OutputStream;)V

    .line 647
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 557
    iget-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 558
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 562
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->R:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 569
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->E:[B

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->E:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->E:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 588
    :goto_0
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->L:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    iget-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog;->M:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->N:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    iget-wide v0, p0, Lcom/twitter/library/scribe/ScribeLog;->O:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 600
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 602
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 603
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->V:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 604
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->W:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->W:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->W:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 607
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 586
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 597
    goto :goto_1

    .line 611
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    :cond_3
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ae:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->Z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->aa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->ad:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->S:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->w:Lcom/twitter/library/scribe/ScribeLog$SearchDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 622
    iget v0, p0, Lcom/twitter/library/scribe/ScribeLog;->T:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->U:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 624
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog;->af:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    iget-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog;->B:Z

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    return-void

    :cond_4
    move v2, v3

    .line 625
    goto :goto_3
.end method
