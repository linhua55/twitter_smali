.class public Lcom/twitter/app/common/base/SnackbarData;
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
            "Lcom/twitter/app/common/base/SnackbarData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/twitter/app/common/base/q;

    invoke-direct {v0}, Lcom/twitter/app/common/base/q;-><init>()V

    sput-object v0, Lcom/twitter/app/common/base/SnackbarData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/base/SnackbarData;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/base/SnackbarData;->b:Ljava/lang/String;

    .line 42
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/twitter/app/common/base/SnackbarData;->c:Landroid/content/Intent;

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/twitter/app/common/base/r;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/twitter/app/common/base/r;->a(Lcom/twitter/app/common/base/r;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/app/common/base/SnackbarData;->a:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/twitter/app/common/base/r;->b(Lcom/twitter/app/common/base/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/base/SnackbarData;->b:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/twitter/app/common/base/r;->c(Lcom/twitter/app/common/base/r;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/base/SnackbarData;->c:Landroid/content/Intent;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/common/base/r;Lcom/twitter/app/common/base/q;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/twitter/app/common/base/SnackbarData;-><init>(Lcom/twitter/app/common/base/r;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/app/common/base/SnackbarData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/twitter/app/common/base/SnackbarData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/twitter/app/common/base/SnackbarData;->c:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
