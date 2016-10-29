.class Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/BrowserDataSource;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/twitter/library/card/CardContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/twitter/library/client/af;

    invoke-direct {v0}, Lcom/twitter/library/client/af;-><init>()V

    sput-object v0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/CardContext;

    invoke-direct {p0, v0}, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;-><init>(Lcom/twitter/library/card/CardContext;)V

    .line 126
    return-void
.end method

.method private constructor <init>(Lcom/twitter/library/card/CardContext;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;->a:Lcom/twitter/library/card/CardContext;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/card/CardContext;Lcom/twitter/library/client/ae;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;-><init>(Lcom/twitter/library/card/CardContext;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;->a:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->h()Z

    move-result v0

    return v0
.end method

.method public c()Lcss;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;->a:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->i()Lcss;

    move-result-object v0

    return-object v0
.end method

.method public d()Lclw;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;->a:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->a()Lclw;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/twitter/library/scribe/ScribeItemsProvider;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;->a:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->f()Lcom/twitter/library/scribe/ScribeItemsProvider;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;->a:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityCardContextDataSource;->a:Lcom/twitter/library/card/CardContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    return-void
.end method
