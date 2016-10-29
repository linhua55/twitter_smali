.class Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;
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
            "Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/twitter/model/core/Tweet;

.field private final b:Lcom/twitter/library/scribe/ScribeItemsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/library/client/ag;

    invoke-direct {v0}, Lcom/twitter/library/client/ag;-><init>()V

    sput-object v0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->a:Lcom/twitter/model/core/Tweet;

    .line 58
    new-instance v0, Lcom/twitter/library/scribe/TweetScribeItemsProvider;

    iget-object v1, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->a:Lcom/twitter/model/core/Tweet;

    invoke-direct {v0, v1}, Lcom/twitter/library/scribe/TweetScribeItemsProvider;-><init>(Lcom/twitter/model/core/Tweet;)V

    iput-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->b:Lcom/twitter/library/scribe/ScribeItemsProvider;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/ae;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;-><init>(Lcom/twitter/model/core/Tweet;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->a:Lcom/twitter/model/core/Tweet;

    iget-boolean v0, v0, Lcom/twitter/model/core/Tweet;->B:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ac()Z

    move-result v0

    return v0
.end method

.method public c()Lcss;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    return-object v0
.end method

.method public d()Lclw;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/twitter/library/scribe/ScribeItemsProvider;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->b:Lcom/twitter/library/scribe/ScribeItemsProvider;

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->a:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/library/client/BrowserDataSourceFactory$BrowseActivityTweetDataSource;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    return-void
.end method
