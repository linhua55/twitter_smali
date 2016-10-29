.class public Lcom/twitter/android/ActivityFragmentSavedState;
.super Lcom/twitter/app/common/util/BaseStateSaver;
.source "Twttr"


# annotations
.annotation build Latx;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OBJ:",
        "Lcom/twitter/android/ActivityFragment;",
        ">",
        "Lcom/twitter/app/common/util/BaseStateSaver",
        "<TOBJ;>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/twitter/android/q;

    invoke-direct {v0}, Lcom/twitter/android/q;-><init>()V

    sput-object v0, Lcom/twitter/android/ActivityFragmentSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/twitter/app/common/util/BaseStateSaver;-><init>(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/ActivityFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOBJ;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/twitter/app/common/util/BaseStateSaver;-><init>(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/android/ActivityFragment;)Lcom/twitter/android/ActivityFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "TOBJ;)TOBJ;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/util/BaseStateSaver;->a(Lcom/twitter/util/serialization/aj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ActivityFragment;

    .line 50
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    iput-boolean v1, v0, Lcom/twitter/android/ActivityFragment;->a:Z

    .line 51
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    iput-boolean v1, v0, Lcom/twitter/android/ActivityFragment;->b:Z

    .line 52
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    iput-boolean v1, v0, Lcom/twitter/android/ActivityFragment;->c:Z

    .line 53
    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 14
    check-cast p2, Lcom/twitter/android/ActivityFragment;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ActivityFragmentSavedState;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/android/ActivityFragment;)Lcom/twitter/android/ActivityFragment;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/android/ActivityFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "TOBJ;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/util/BaseStateSaver;->a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 41
    iget-boolean v0, p2, Lcom/twitter/android/ActivityFragment;->a:Z

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 42
    iget-boolean v0, p2, Lcom/twitter/android/ActivityFragment;->b:Z

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 43
    iget-boolean v0, p2, Lcom/twitter/android/ActivityFragment;->c:Z

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 44
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    check-cast p2, Lcom/twitter/android/ActivityFragment;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ActivityFragmentSavedState;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/android/ActivityFragment;)V

    return-void
.end method
