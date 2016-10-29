.class Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;
.super Lcom/twitter/library/scribe/ScribeItem;
.source "Twttr"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/gcm/e;

    invoke-direct {v0}, Lcom/google/android/gcm/e;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/ScribeItem;-><init>(Landroid/os/Parcel;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->a:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->b:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/twitter/library/scribe/ScribeItem;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->a:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->b:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method protected a(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const-string/jumbo v1, "newRegistrationToken"

    iget-object v0, p0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->a:Ljava/lang/String;

    .line 132
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    .line 131
    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v1, "oldRegistrationToken"

    iget-object v0, p0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->b:Ljava/lang/String;

    .line 134
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    .line 133
    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->a:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/gcm/GCMScribeReporter$GcmRegistrationScribeItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return-void
.end method
