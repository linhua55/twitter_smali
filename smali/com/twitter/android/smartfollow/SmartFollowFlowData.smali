.class public Lcom/twitter/android/smartfollow/SmartFollowFlowData;
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
            "Lcom/twitter/android/smartfollow/SmartFollowFlowData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field private d:[J

.field private e:Lcom/twitter/model/stratostore/SourceLocation;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/android/smartfollow/q;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/q;-><init>()V

    sput-object v0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->a:[Ljava/lang/String;

    .line 35
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->b:[Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->c:Ljava/util/List;

    .line 37
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->d:[J

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->a:[Ljava/lang/String;

    .line 35
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->b:[Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->c:Ljava/util/List;

    .line 37
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->d:[J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->a:[Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->b:[Ljava/lang/String;

    .line 47
    sget-object v2, Lcom/twitter/model/core/TwitterUser;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->c:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->d:[J

    .line 49
    invoke-static {}, Lcom/twitter/model/stratostore/SourceLocation;->values()[Lcom/twitter/model/stratostore/SourceLocation;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->e:Lcom/twitter/model/stratostore/SourceLocation;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->f:Z

    .line 51
    return-void

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/model/stratostore/SourceLocation;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->e:Lcom/twitter/model/stratostore/SourceLocation;

    .line 114
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->c:Ljava/util/List;

    .line 101
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->f:Z

    .line 88
    return-void
.end method

.method public a([J)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->d:[J

    .line 110
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->a:[Ljava/lang/String;

    .line 75
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->b:[Ljava/lang/String;

    .line 84
    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->f:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->c:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public e()[J
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->d:[J

    return-object v0
.end method

.method public f()Lcom/twitter/model/stratostore/SourceLocation;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->e:Lcom/twitter/model/stratostore/SourceLocation;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/SourceLocation;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/twitter/util/collection/v;->a(I)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "interest_ids"

    const-string/jumbo v2, ","

    .line 124
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->a()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "custom_interests"

    const-string/jumbo v2, ","

    .line 125
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->b()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 123
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->a:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->b:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/twitter/model/core/TwitterUser;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 58
    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->d:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 59
    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->e:Lcom/twitter/model/stratostore/SourceLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->e:Lcom/twitter/model/stratostore/SourceLocation;

    invoke-virtual {v0}, Lcom/twitter/model/stratostore/SourceLocation;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-boolean v0, p0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->f:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void

    :cond_1
    move v0, v1

    .line 59
    goto :goto_0
.end method
