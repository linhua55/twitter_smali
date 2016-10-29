.class public Lcom/twitter/android/media/imageeditor/m;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/app/common/base/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1521
    new-instance v0, Lcom/twitter/app/common/base/g;

    invoke-direct {v0}, Lcom/twitter/app/common/base/g;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/m;->a:Lcom/twitter/app/common/base/g;

    .line 1522
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/media/imageeditor/EditImageFragment;
    .locals 2

    .prologue
    .line 1567
    new-instance v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;

    invoke-direct {v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;-><init>()V

    .line 1568
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/m;->a:Lcom/twitter/app/common/base/g;

    invoke-virtual {v1}, Lcom/twitter/app/common/base/g;->c()Lcom/twitter/app/common/base/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 1569
    return-object v0
.end method

.method public a(F)Lcom/twitter/android/media/imageeditor/m;
    .locals 2

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/m;->a:Lcom/twitter/app/common/base/g;

    const-string/jumbo v1, "force_crop_ratio"

    invoke-virtual {v0, v1, p1}, Lcom/twitter/app/common/base/g;->a(Ljava/lang/String;F)Lcom/twitter/app/common/base/g;

    .line 1562
    return-object p0
.end method

.method public a(I)Lcom/twitter/android/media/imageeditor/m;
    .locals 2

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/m;->a:Lcom/twitter/app/common/base/g;

    const-string/jumbo v1, "initial_position"

    invoke-virtual {v0, v1, p1}, Lcom/twitter/app/common/base/g;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    .line 1533
    return-object p0
.end method

.method public a(Lcom/twitter/android/composer/ComposerType;)Lcom/twitter/android/media/imageeditor/m;
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/m;->a:Lcom/twitter/app/common/base/g;

    const-string/jumbo v1, "composer_type"

    invoke-virtual {v0, v1, p1}, Lcom/twitter/app/common/base/g;->a(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/twitter/app/common/base/g;

    .line 1544
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/media/imageeditor/m;
    .locals 2

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/m;->a:Lcom/twitter/app/common/base/g;

    const-string/jumbo v1, "scribe_section"

    invoke-virtual {v0, v1, p1}, Lcom/twitter/app/common/base/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    .line 1527
    return-object p0
.end method

.method public a(Z)Lcom/twitter/android/media/imageeditor/m;
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/m;->a:Lcom/twitter/app/common/base/g;

    const-string/jumbo v1, "lock_to_initial"

    invoke-virtual {v0, v1, p1}, Lcom/twitter/app/common/base/g;->a(Ljava/lang/String;Z)Lcom/twitter/app/common/base/g;

    .line 1557
    return-object p0
.end method

.method public b(I)Lcom/twitter/android/media/imageeditor/m;
    .locals 2

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/m;->a:Lcom/twitter/app/common/base/g;

    const-string/jumbo v1, "initial_type"

    invoke-virtual {v0, v1, p1}, Lcom/twitter/app/common/base/g;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    .line 1538
    return-object p0
.end method
