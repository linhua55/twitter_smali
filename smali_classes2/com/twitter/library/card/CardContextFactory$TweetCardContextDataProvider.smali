.class Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/CardContextDataProvider;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/twitter/model/core/Tweet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/twitter/library/card/ad;

    invoke-direct {v0}, Lcom/twitter/library/card/ad;-><init>()V

    sput-object v0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-class v0, Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    iput-object v0, p0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->a:Lcom/twitter/model/core/Tweet;

    .line 150
    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->a:Lcom/twitter/model/core/Tweet;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/card/ab;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;-><init>(Lcom/twitter/model/core/Tweet;)V

    return-void
.end method


# virtual methods
.method public a()Lclw;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    return-object v0
.end method

.method public b()Lclj;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ah()Lclj;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->a:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->a:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ai()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->a:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->a:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$TweetCardContextDataProvider;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 204
    return-void
.end method
