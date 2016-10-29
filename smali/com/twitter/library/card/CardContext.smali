.class public Lcom/twitter/library/card/CardContext;
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
            "Lcom/twitter/library/card/CardContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/twitter/library/card/CardContextDataProvider;

.field private final b:Lcom/twitter/library/scribe/ScribeItemsProvider;

.field private final c:Lcom/twitter/model/core/bm;

.field private final d:Lcss;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/library/card/x;

    invoke-direct {v0}, Lcom/twitter/library/card/x;-><init>()V

    sput-object v0, Lcom/twitter/library/card/CardContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-class v0, Lcom/twitter/library/card/CardContextDataProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/CardContextDataProvider;

    iput-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    .line 59
    const-class v0, Lcom/twitter/library/scribe/ScribeItemsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/ScribeItemsProvider;

    iput-object v0, p0, Lcom/twitter/library/card/CardContext;->b:Lcom/twitter/library/scribe/ScribeItemsProvider;

    .line 60
    sget-object v0, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/library/card/CardContext;->c:Lcom/twitter/model/core/bm;

    .line 61
    sget-object v0, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    iput-object v0, p0, Lcom/twitter/library/card/CardContext;->d:Lcss;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/library/card/CardContext;->e:Z

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/twitter/library/card/y;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/twitter/library/card/y;->a(Lcom/twitter/library/card/y;)Lcom/twitter/library/card/CardContextDataProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    .line 51
    invoke-static {p1}, Lcom/twitter/library/card/y;->b(Lcom/twitter/library/card/y;)Lcom/twitter/library/scribe/ScribeItemsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/card/CardContext;->b:Lcom/twitter/library/scribe/ScribeItemsProvider;

    .line 52
    invoke-static {p1}, Lcom/twitter/library/card/y;->c(Lcom/twitter/library/card/y;)Lcom/twitter/model/core/bm;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/bm;->a:Lcom/twitter/model/core/bm;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    iput-object v0, p0, Lcom/twitter/library/card/CardContext;->c:Lcom/twitter/model/core/bm;

    .line 53
    invoke-static {p1}, Lcom/twitter/library/card/y;->d(Lcom/twitter/library/card/y;)Lcss;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/card/CardContext;->d:Lcss;

    .line 54
    invoke-static {p1}, Lcom/twitter/library/card/y;->e(Lcom/twitter/library/card/y;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/card/CardContext;->e:Z

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/card/y;Lcom/twitter/library/card/x;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/twitter/library/card/CardContext;-><init>(Lcom/twitter/library/card/y;)V

    return-void
.end method

.method public static a(Lcom/twitter/library/card/CardContext;)Lcom/twitter/model/core/Tweet;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    invoke-interface {v0}, Lcom/twitter/library/card/CardContextDataProvider;->h()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lclw;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    invoke-interface {v0}, Lcom/twitter/library/card/CardContextDataProvider;->a()Lclw;

    move-result-object v0

    return-object v0
.end method

.method public b()Lclj;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    invoke-interface {v0}, Lcom/twitter/library/card/CardContextDataProvider;->b()Lclj;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    invoke-interface {v0}, Lcom/twitter/library/card/CardContextDataProvider;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    invoke-interface {v0}, Lcom/twitter/library/card/CardContextDataProvider;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    invoke-interface {v0}, Lcom/twitter/library/card/CardContextDataProvider;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lcom/twitter/library/scribe/ScribeItemsProvider;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->b:Lcom/twitter/library/scribe/ScribeItemsProvider;

    return-object v0
.end method

.method public g()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/core/cx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->c:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/twitter/library/card/CardContext;->e:Z

    return v0
.end method

.method public i()Lcss;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->d:Lcss;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/twitter/library/card/CardContext;->a()Lclw;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lclw;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    invoke-interface {v0}, Lcom/twitter/library/card/CardContextDataProvider;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    invoke-interface {v0}, Lcom/twitter/library/card/CardContextDataProvider;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->a:Lcom/twitter/library/card/CardContextDataProvider;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->b:Lcom/twitter/library/scribe/ScribeItemsProvider;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->c:Lcom/twitter/model/core/bm;

    sget-object v1, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 75
    iget-object v0, p0, Lcom/twitter/library/card/CardContext;->d:Lcss;

    sget-object v1, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 76
    iget-boolean v0, p0, Lcom/twitter/library/card/CardContext;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
