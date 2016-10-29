.class final Lcom/twitter/library/client/af;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;

    invoke-direct {v0, p1}, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;
    .locals 1

    .prologue
    .line 118
    new-array v0, p1, [Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/twitter/library/client/af;->a(Landroid/os/Parcel;)Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/twitter/library/client/af;->a(I)[Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;

    move-result-object v0

    return-object v0
.end method
