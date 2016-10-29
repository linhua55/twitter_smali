.class public Lcom/twitter/library/scribe/MomentScribeDetails;
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
            "Lcom/twitter/library/scribe/MomentScribeDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Boolean;

.field public final e:Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

.field public final f:Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

.field public final g:Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

.field public final h:Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

.field public final i:J

.field public final j:Lcom/twitter/model/moments/ap;

.field public final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/library/scribe/n;

    invoke-direct {v0}, Lcom/twitter/library/scribe/n;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/MomentScribeDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->a:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->b:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->c:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->d:Ljava/lang/Boolean;

    .line 77
    const-class v0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->e:Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    .line 78
    const-class v0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->f:Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    .line 79
    const-class v0, Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->g:Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

    .line 80
    const-class v0, Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->h:Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->i:J

    .line 82
    sget-object v0, Lcom/twitter/model/moments/ap;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ap;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->j:Lcom/twitter/model/moments/ap;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->k:Ljava/lang/String;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/library/scribe/n;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/MomentScribeDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/twitter/library/scribe/o;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-wide v0, p1, Lcom/twitter/library/scribe/o;->a:J

    iput-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->a:J

    .line 60
    iget-wide v0, p1, Lcom/twitter/library/scribe/o;->b:J

    iput-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->b:J

    .line 61
    iget-object v0, p1, Lcom/twitter/library/scribe/o;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->c:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/twitter/library/scribe/o;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->d:Ljava/lang/Boolean;

    .line 63
    iget-object v0, p1, Lcom/twitter/library/scribe/o;->e:Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->e:Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    .line 64
    iget-object v0, p1, Lcom/twitter/library/scribe/o;->f:Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->f:Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    .line 65
    iget-object v0, p1, Lcom/twitter/library/scribe/o;->g:Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->g:Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

    .line 66
    iget-object v0, p1, Lcom/twitter/library/scribe/o;->h:Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->h:Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

    .line 67
    iget-wide v0, p1, Lcom/twitter/library/scribe/o;->i:J

    iput-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->i:J

    .line 68
    iget-object v0, p1, Lcom/twitter/library/scribe/o;->j:Lcom/twitter/model/moments/ap;

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->j:Lcom/twitter/model/moments/ap;

    .line 69
    invoke-static {p1}, Lcom/twitter/library/scribe/o;->a(Lcom/twitter/library/scribe/o;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->k:Ljava/lang/String;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/scribe/o;Lcom/twitter/library/scribe/n;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/MomentScribeDetails;-><init>(Lcom/twitter/library/scribe/o;)V

    return-void
.end method

.method static a(JLclw;)Lcom/twitter/library/scribe/MomentScribeDetails;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lcom/twitter/library/scribe/o;

    invoke-direct {v0}, Lcom/twitter/library/scribe/o;-><init>()V

    .line 90
    invoke-virtual {v0, p0, p1}, Lcom/twitter/library/scribe/o;->b(J)Lcom/twitter/library/scribe/o;

    .line 91
    const-string/jumbo v1, "id"

    invoke-virtual {p2, v1}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 94
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/o;->a(J)Lcom/twitter/library/scribe/o;

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/library/scribe/o;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails;

    return-object v0
.end method

.method public static a(J)Z
    .locals 2

    .prologue
    .line 597
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 121
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->g:Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v0, "moment_engagement"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->g:Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 126
    const-string/jumbo v0, "is_moment_followed"

    iget-object v1, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->f:Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    if-eqz v0, :cond_2

    .line 129
    const-string/jumbo v0, "moment_metadata"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->f:Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 132
    :cond_2
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->a:J

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/MomentScribeDetails;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    const-string/jumbo v0, "moment_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->e:Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    if-eqz v0, :cond_4

    .line 136
    const-string/jumbo v0, "moment_transition"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->e:Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/MomentScribeDetails$Transition;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 139
    :cond_4
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->b:J

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/MomentScribeDetails;->a(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    const-string/jumbo v0, "tweet_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 143
    const-string/jumbo v0, "guide_category_id"

    iget-object v1, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->h:Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

    if-eqz v0, :cond_7

    .line 146
    const-string/jumbo v0, "moment_dismiss"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->h:Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 149
    :cond_7
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->i:J

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/MomentScribeDetails;->a(J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    const-string/jumbo v0, "impression_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->i:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 152
    :cond_8
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->j:Lcom/twitter/model/moments/ap;

    if-eqz v0, :cond_9

    .line 153
    const-string/jumbo v0, "context_scribe_info"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->j:Lcom/twitter/model/moments/ap;

    invoke-virtual {v0, p1}, Lcom/twitter/model/moments/ap;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 157
    const-string/jumbo v0, "navigation_uri"

    iget-object v1, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_a
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 160
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->d:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 110
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->e:Lcom/twitter/library/scribe/MomentScribeDetails$Transition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->f:Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 112
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->g:Lcom/twitter/library/scribe/MomentScribeDetails$Engagement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->h:Lcom/twitter/library/scribe/MomentScribeDetails$Dismiss;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 114
    iget-wide v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->j:Lcom/twitter/model/moments/ap;

    sget-object v1, Lcom/twitter/model/moments/ap;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 116
    iget-object v0, p0, Lcom/twitter/library/scribe/MomentScribeDetails;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return-void
.end method
