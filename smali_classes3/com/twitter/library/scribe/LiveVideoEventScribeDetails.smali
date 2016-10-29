.class public Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;
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
            "Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/library/scribe/k;

    invoke-direct {v0}, Lcom/twitter/library/scribe/k;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;->a:J

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/library/scribe/k;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/twitter/library/scribe/l;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-wide v0, p1, Lcom/twitter/library/scribe/l;->a:J

    iput-wide v0, p0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;->a:J

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/scribe/l;Lcom/twitter/library/scribe/k;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;-><init>(Lcom/twitter/library/scribe/l;)V

    return-void
.end method

.method public static a(J)Z
    .locals 2

    .prologue
    .line 79
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 55
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 56
    iget-wide v0, p0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;->a:J

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 60
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    return-void
.end method
