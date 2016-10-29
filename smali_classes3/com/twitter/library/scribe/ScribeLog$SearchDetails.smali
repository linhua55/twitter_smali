.class public Lcom/twitter/library/scribe/ScribeLog$SearchDetails;
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
            "Lcom/twitter/library/scribe/ScribeLog$SearchDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1322
    new-instance v0, Lcom/twitter/library/scribe/ai;

    invoke-direct {v0}, Lcom/twitter/library/scribe/ai;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->a:Ljava/lang/String;

    .line 1352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->b:Ljava/lang/String;

    .line 1353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->c:Ljava/lang/String;

    .line 1354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->d:Z

    .line 1355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->e:Z

    .line 1356
    return-void

    :cond_0
    move v0, v2

    .line 1354
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1355
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    iput-object p1, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->a:Ljava/lang/String;

    .line 1344
    iput-object p2, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->b:Ljava/lang/String;

    .line 1345
    iput-object p3, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->c:Ljava/lang/String;

    .line 1346
    iput-boolean p4, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->d:Z

    .line 1347
    iput-boolean p5, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->e:Z

    .line 1348
    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1373
    const-string/jumbo v0, "search_details"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->e(Ljava/lang/String;)V

    .line 1374
    const-string/jumbo v0, "query"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string/jumbo v0, "result_filter"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string/jumbo v1, "social_filter"

    iget-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->d:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "following"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1378
    const-string/jumbo v0, "module_type"

    iget-object v1, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->e:Z

    if-eqz v0, :cond_1

    .line 1381
    const-string/jumbo v0, "near"

    const-string/jumbo v1, "me"

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 1384
    return-void

    .line 1376
    :cond_2
    const-string/jumbo v0, "all"

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1365
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1368
    iget-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    iget-boolean v0, p0, Lcom/twitter/library/scribe/ScribeLog$SearchDetails;->e:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    return-void

    :cond_0
    move v0, v2

    .line 1368
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1369
    goto :goto_1
.end method
