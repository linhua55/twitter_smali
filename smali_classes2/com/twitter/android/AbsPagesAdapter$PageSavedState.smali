.class public Lcom/twitter/android/AbsPagesAdapter$PageSavedState;
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
            "Lcom/twitter/android/AbsPagesAdapter$PageSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/twitter/android/c;

    invoke-direct {v0}, Lcom/twitter/android/c;-><init>()V

    sput-object v0, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;->a:[Ljava/lang/String;

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ax;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 216
    new-array v3, v2, [Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 218
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 219
    invoke-virtual {v0}, Lcom/twitter/library/client/ax;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 222
    :cond_0
    iput-object v3, p0, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;->a:[Ljava/lang/String;

    .line 223
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/twitter/android/AbsPagesAdapter$PageSavedState;->a:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 237
    return-void
.end method
