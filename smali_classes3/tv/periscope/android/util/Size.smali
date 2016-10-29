.class public Ltv/periscope/android/util/Size;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/periscope/android/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ltv/periscope/android/util/Size;


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ltv/periscope/android/util/z;

    invoke-direct {v0}, Ltv/periscope/android/util/z;-><init>()V

    sput-object v0, Ltv/periscope/android/util/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    new-instance v0, Ltv/periscope/android/util/Size;

    invoke-direct {v0}, Ltv/periscope/android/util/Size;-><init>()V

    sput-object v0, Ltv/periscope/android/util/Size;->a:Ltv/periscope/android/util/Size;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, v0}, Ltv/periscope/android/util/Size;-><init>(II)V

    .line 39
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Ltv/periscope/android/util/Size;->mWidth:I

    .line 43
    iput p2, p0, Ltv/periscope/android/util/Size;->mHeight:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/util/Size;->mWidth:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/util/Size;->mHeight:I

    .line 237
    return-void
.end method


# virtual methods
.method public a(Ltv/periscope/android/util/Size;)Z
    .locals 2
    .param p1    # Ltv/periscope/android/util/Size;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Ltv/periscope/android/util/Size;->mWidth:I

    iget v1, p1, Ltv/periscope/android/util/Size;->mWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Ltv/periscope/android/util/Size;->mHeight:I

    iget v1, p1, Ltv/periscope/android/util/Size;->mHeight:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 212
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    check-cast p1, Ltv/periscope/android/util/Size;

    invoke-virtual {p0, p1}, Ltv/periscope/android/util/Size;->a(Ltv/periscope/android/util/Size;)Z

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

.method public hashCode()I
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Ltv/periscope/android/util/Size;->mWidth:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ltv/periscope/android/util/Size;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 226
    const-string/jumbo v0, "[w: %d, h: %d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ltv/periscope/android/util/Size;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ltv/periscope/android/util/Size;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 241
    iget v0, p0, Ltv/periscope/android/util/Size;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Ltv/periscope/android/util/Size;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return-void
.end method
