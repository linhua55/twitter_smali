.class public Lcom/twitter/library/scribe/MomentScribeDetails$Transition;
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
            "Lcom/twitter/library/scribe/MomentScribeDetails$Transition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/twitter/library/scribe/t;

    invoke-direct {v0}, Lcom/twitter/library/scribe/t;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->a:J

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->b:J

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->c:J

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->d:Z

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->e:Z

    .line 245
    return-void

    :cond_0
    move v0, v2

    .line 243
    goto :goto_0

    :cond_1
    move v1, v2

    .line 244
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/library/scribe/n;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/twitter/library/scribe/u;)V
    .locals 2

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iget-wide v0, p1, Lcom/twitter/library/scribe/u;->a:J

    iput-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->a:J

    .line 233
    iget-wide v0, p1, Lcom/twitter/library/scribe/u;->b:J

    iput-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->b:J

    .line 234
    iget-wide v0, p1, Lcom/twitter/library/scribe/u;->c:J

    iput-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->c:J

    .line 235
    iget-boolean v0, p1, Lcom/twitter/library/scribe/u;->d:Z

    iput-boolean v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->d:Z

    .line 236
    iget-boolean v0, p1, Lcom/twitter/library/scribe/u;->e:Z

    iput-boolean v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->e:Z

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/scribe/u;Lcom/twitter/library/scribe/n;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;-><init>(Lcom/twitter/library/scribe/u;)V

    return-void
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
    .line 262
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 263
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->b:J

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/MomentScribeDetails;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v0, "curr_tweet_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 266
    :cond_0
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->c:J

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/MomentScribeDetails;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string/jumbo v0, "previous_moment_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 269
    :cond_1
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->a:J

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/MomentScribeDetails;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    const-string/jumbo v0, "prev_tweet_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 272
    :cond_2
    const-string/jumbo v0, "reached_capsule_end"

    iget-boolean v1, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 273
    const-string/jumbo v0, "reached_capsule_start"

    iget-boolean v1, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 274
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 275
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iget-wide v4, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->a:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    iget-wide v4, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->b:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    iget-wide v4, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->c:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 257
    iget-boolean v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-boolean v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->e:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    return-void

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    :cond_1
    move v1, v2

    .line 258
    goto :goto_1
.end method
