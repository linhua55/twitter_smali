.class public Lcom/twitter/library/scribe/TwitterScribeAssociation;
.super Lcom/twitter/library/scribe/ScribeAssociation;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/scribe/ScribeAssociation",
        "<",
        "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/library/scribe/bl;

    invoke-direct {v0}, Lcom/twitter/library/scribe/bl;-><init>()V

    sput-object v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/library/scribe/ScribeAssociation;-><init>()V

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/ScribeAssociation;-><init>(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/library/scribe/bl;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/twitter/library/scribe/ScribeAssociation;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    .line 54
    invoke-virtual {p1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    .line 55
    invoke-virtual {p1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    .line 56
    invoke-virtual {p1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    .line 57
    invoke-virtual {p1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    .line 58
    return-void
.end method

.method public static a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 0

    .prologue
    .line 72
    if-eqz p0, :cond_0

    .line 75
    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {p0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "discover"

    invoke-virtual {p0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
