.class public Lcom/twitter/android/timeline/NewTweetsBannerState;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Z

.field final b:Lcom/twitter/model/timeline/br;

.field final c:Z

.field final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/twitter/android/timeline/aj;

    invoke-direct {v0}, Lcom/twitter/android/timeline/aj;-><init>()V

    sput-object v0, Lcom/twitter/android/timeline/NewTweetsBannerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->a:Z

    .line 51
    sget-object v0, Lcom/twitter/model/timeline/br;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/br;

    iput-object v0, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->b:Lcom/twitter/model/timeline/br;

    .line 52
    invoke-static {p1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->c:Z

    .line 53
    invoke-static {p1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->d:Z

    .line 54
    return-void
.end method

.method public constructor <init>(ZLcom/twitter/model/timeline/br;ZZ)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->a:Z

    .line 44
    iput-object p2, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->b:Lcom/twitter/model/timeline/br;

    .line 45
    iput-boolean p3, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->c:Z

    .line 46
    iput-boolean p4, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->d:Z

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->a:Z

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Z)V

    .line 64
    iget-object v0, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->b:Lcom/twitter/model/timeline/br;

    sget-object v1, Lcom/twitter/model/timeline/br;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 65
    iget-boolean v0, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->c:Z

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Z)V

    .line 66
    iget-boolean v0, p0, Lcom/twitter/android/timeline/NewTweetsBannerState;->d:Z

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Z)V

    .line 67
    return-void
.end method
