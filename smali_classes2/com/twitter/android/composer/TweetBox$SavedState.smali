.class Lcom/twitter/android/composer/TweetBox$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Twttr"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/android/composer/TweetBox$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Lcom/twitter/util/Tristate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 925
    new-instance v0, Lcom/twitter/android/composer/ck;

    invoke-direct {v0}, Lcom/twitter/android/composer/ck;-><init>()V

    sput-object v0, Lcom/twitter/android/composer/TweetBox$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 942
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 943
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/composer/TweetBox$SavedState;->a:Z

    .line 944
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/Tristate;

    iput-object v0, p0, Lcom/twitter/android/composer/TweetBox$SavedState;->b:Lcom/twitter/util/Tristate;

    .line 945
    return-void

    .line 943
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcelable;ZLcom/twitter/util/Tristate;)V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 949
    iput-boolean p2, p0, Lcom/twitter/android/composer/TweetBox$SavedState;->a:Z

    .line 950
    iput-object p3, p0, Lcom/twitter/android/composer/TweetBox$SavedState;->b:Lcom/twitter/util/Tristate;

    .line 951
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 955
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 956
    iget-boolean v0, p0, Lcom/twitter/android/composer/TweetBox$SavedState;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    iget-object v0, p0, Lcom/twitter/android/composer/TweetBox$SavedState;->b:Lcom/twitter/util/Tristate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 958
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
