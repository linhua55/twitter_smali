.class final Lorg/parceler/bb;
.super Ldhn;
.source "Twttr"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Ldhn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 516
    const-class v0, Lorg/parceler/NonParcelRepository$SetParcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lorg/parceler/bu;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 521
    invoke-static {p1}, Lorg/parceler/bu;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 522
    return-void
.end method
