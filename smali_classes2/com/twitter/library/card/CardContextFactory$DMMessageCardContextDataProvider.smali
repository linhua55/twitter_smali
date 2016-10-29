.class Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;
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
            "Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/twitter/model/dms/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/twitter/library/card/ac;

    invoke-direct {v0}, Lcom/twitter/library/card/ac;-><init>()V

    sput-object v0, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/twitter/model/dms/bo;->h:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bo;

    iput-object v0, p0, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;->a:Lcom/twitter/model/dms/bo;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/library/card/ab;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/dms/bo;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;->a:Lcom/twitter/model/dms/bo;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/bo;Lcom/twitter/library/card/ab;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;-><init>(Lcom/twitter/model/dms/bo;)V

    return-void
.end method


# virtual methods
.method public a()Lclw;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;->a:Lcom/twitter/model/dms/bo;

    invoke-virtual {v0}, Lcom/twitter/model/dms/bo;->C()Lclw;

    move-result-object v0

    return-object v0
.end method

.method public b()Lclj;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;->a:Lcom/twitter/model/dms/bo;

    invoke-virtual {v0}, Lcom/twitter/model/dms/bo;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;->a:Lcom/twitter/model/dms/bo;

    invoke-virtual {v0}, Lcom/twitter/model/dms/bo;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 100
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;->a:Lcom/twitter/model/dms/bo;

    iget-object v0, v0, Lcom/twitter/model/dms/bo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/library/card/CardContextFactory$DMMessageCardContextDataProvider;->a:Lcom/twitter/model/dms/bo;

    sget-object v1, Lcom/twitter/model/dms/bo;->h:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 123
    return-void
.end method
