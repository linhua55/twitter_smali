.class public Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:J

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/twitter/library/scribe/r;

    invoke-direct {v0}, Lcom/twitter/library/scribe/r;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJII)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput p1, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->a:I

    .line 389
    iput-wide p2, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->b:J

    .line 390
    iput p4, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->c:I

    .line 391
    iput p5, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->d:I

    .line 392
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->a:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->b:J

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->c:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->d:I

    .line 400
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/library/scribe/n;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/library/scribe/s;)V
    .locals 6

    .prologue
    .line 403
    iget v1, p1, Lcom/twitter/library/scribe/s;->a:I

    iget-wide v2, p1, Lcom/twitter/library/scribe/s;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-wide v2, p1, Lcom/twitter/library/scribe/s;->b:J

    :goto_0
    iget v4, p1, Lcom/twitter/library/scribe/s;->c:I

    iget v5, p1, Lcom/twitter/library/scribe/s;->d:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;-><init>(IJII)V

    .line 405
    return-void

    .line 403
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 422
    const-string/jumbo v0, "content_type"

    iget v1, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 423
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->b:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 424
    const-string/jumbo v0, "media_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 426
    :cond_0
    iget v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->d:I

    if-lez v0, :cond_1

    .line 427
    const-string/jumbo v0, "page_index"

    iget v1, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 428
    const-string/jumbo v0, "total_pages"

    iget v1, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 430
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 431
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 414
    iget v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 416
    iget v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    return-void
.end method
