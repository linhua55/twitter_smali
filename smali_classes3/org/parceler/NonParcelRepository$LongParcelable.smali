.class public final Lorg/parceler/NonParcelRepository$LongParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/au;

.field private static final a:Ldhs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldhs",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 792
    new-instance v0, Lorg/parceler/at;

    invoke-direct {v0}, Lorg/parceler/at;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$LongParcelable;->a:Ldhs;

    .line 814
    new-instance v0, Lorg/parceler/au;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/au;-><init>(Lorg/parceler/a;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$LongParcelable;->CREATOR:Lorg/parceler/au;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 806
    sget-object v0, Lorg/parceler/NonParcelRepository$LongParcelable;->a:Ldhs;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/bz;Lorg/parceler/a;)V

    .line 807
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 810
    sget-object v0, Lorg/parceler/NonParcelRepository$LongParcelable;->a:Ldhs;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/bz;Lorg/parceler/a;)V

    .line 811
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 790
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 790
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
